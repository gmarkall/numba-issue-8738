import llvmlite.binding as llvm
import ctypes
import tempfile
import subprocess
import os
import sys

# llvm.options.set_debug(True)

llvm.initialize()
llvm.initialize_native_target()
llvm.initialize_native_asmprinter()  # yes, even this one

target = llvm.Target.from_default_triple()
target_machine = target.create_target_machine()
backing_mod = llvm.parse_assembly("")
engine = llvm.create_mcjit_compiler(backing_mod, target_machine)


for obj in ('accept_pointer.o', 'send_pointer1.o', 'send_pointer2.o'):
    engine.add_object_file(obj)

engine.finalize_object()

fname1 = 'send_pointer1'
fname2 = 'send_pointer2'
addr1 = engine.get_function_address(fname1)
addr2 = engine.get_function_address(fname2)

print(f"PID is {os.getpid()}")


def disass_function(addr):
    if addr == 0:
        raise RuntimeError("Function was not found")
    print(f"Function is at 0x{addr:x}")
    with tempfile.NamedTemporaryFile() as f:
        data = (ctypes.c_char*256).from_address(addr)
        f.write(data)
        f.flush()
        objdump_cmd = (f'objdump -D -b binary --adjust-vma=0x{addr:x} '
                       f'-m aarch64 {f.name}')
        print(f"Running {objdump_cmd}...")
        cp = subprocess.run(objdump_cmd.split(' '), capture_output=True)
        print(cp.stdout.decode())


disass_function(addr1)
disass_function(addr2)

if len(sys.argv) > 1:
    # Wait for input if any args provided (e.g. for GDB attach)
    input()
