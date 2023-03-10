import llvmlite.binding as llvm
import ctypes
import tempfile
import subprocess

# llvm.options.set_debug(True)

llvm.initialize()
llvm.initialize_native_target()
llvm.initialize_native_asmprinter()  # yes, even this one

target = llvm.Target.from_default_triple()
target_machine = target.create_target_machine()
backing_mod = llvm.parse_assembly("")
engine = llvm.create_mcjit_compiler(backing_mod, target_machine)


for i in range(1, 9):
    engine.add_object_file(f'obj{i}.elf')

engine.finalize_object()

fname = ('_ZN5numba5typed10listobject13impl_new_list12_3clocals_'
         '3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_'
         '3dE32typeref_5bListType_5bint64_5d_5dx')
addr = engine.get_function_address(fname)

print(f"Function is at 0x{addr:x}")

with tempfile.NamedTemporaryFile() as f:
    data = (ctypes.c_char*256).from_address(addr)
    f.write(data)
    f.flush()
    objdump_cmd = f'objdump -D -b binary --adjust-vma=0x{addr:x} -m aarch64 {f.name}'
    print(f"Running {objdump_cmd}...")
    cp = subprocess.run(objdump_cmd.split(' '), capture_output=True)
    print(cp.stdout.decode())

