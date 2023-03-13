# Reproducer that uses C only

When `python check.py` is run, we get the following output (for
example):

```
(numballvm14) gmarkall@gm-agx:~/numbadev/issues/8738/c$ python check.py wait
PID is 78407
Function is at 0xffffafb6a014
Running objdump -D -b binary --adjust-vma=0xffffafb6a014 -m aarch64 /tmp/tmp4h53ah57...

/tmp/tmp4h53ah57:     file format binary

Disassembly of section .data:

0000ffffafb6a014 <.data>:
    ffffafb6a014:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
    ffffafb6a018:       910003fd        mov     x29, sp
    ffffafb6a01c:       d0ffffe0        adrp    x0, 0xffffafb68000
    ffffafb6a020:       f9400000        ldr     x0, [x0]
    ffffafb6a024:       97fffff7        bl      0xffffafb6a000
    ffffafb6a028:       d503201f        nop
    ffffafb6a02c:       a8c17bfd        ldp     x29, x30, [sp], #16
    ffffafb6a030:       d65f03c0        ret
    ffffafb6a034:       d503201f        nop
    ffffafb6a038:       d65f03c0        ret
        ...
    ffffafb6a078:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
    ffffafb6a07c:       910003fd        mov     x29, sp
    ffffafb6a080:       90000000        adrp    x0, 0xffffafb6a000
    ffffafb6a084:       f9400000        ldr     x0, [x0]
    ffffafb6a088:       97ffffde        bl      0xffffafb6a000
    ffffafb6a08c:       d503201f        nop
    ffffafb6a090:       a8c17bfd        ldp     x29, x30, [sp], #16
    ffffafb6a094:       d65f03c0        ret
    ffffafb6a098:       d503201f        nop
    ffffafb6a09c:       d65f03c0        ret
        ...

Function is at 0xffffafb6a078
Running objdump -D -b binary --adjust-vma=0xffffafb6a078 -m aarch64 /tmp/tmpeb4bwm4q...

/tmp/tmpeb4bwm4q:     file format binary

Disassembly of section .data:

0000ffffafb6a078 <.data>:
    ffffafb6a078:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
    ffffafb6a07c:       910003fd        mov     x29, sp
    ffffafb6a080:       90000000        adrp    x0, 0xffffafb6a000
    ffffafb6a084:       f9400000        ldr     x0, [x0]
    ffffafb6a088:       97ffffde        bl      0xffffafb6a000
    ffffafb6a08c:       d503201f        nop
    ffffafb6a090:       a8c17bfd        ldp     x29, x30, [sp], #16
    ffffafb6a094:       d65f03c0        ret
    ffffafb6a098:       d503201f        nop
    ffffafb6a09c:       d65f03c0        ret
        ...
```

The first function is `send_pointer1`, and its relocation for `f1()` has
been correctly resolved - it loads the address of `f1()` from
0xffffafb68000, and this can be checked in GDB:

```
(gdb) x/2x 0xffffafb68000
0xffffafb68000: 0xafb6a034      0x0000ffff
(gdb) x/2i 0x0000ffffafb6a034
   0xffffafb6a034 <f1>: nop
   0xffffafb6a038 <f1+4>:       ret
```

The second function, `send_pointer2`, appears to have its relocation for
`f1()` incorrectly resolved:

```
(gdb) x/2x 0xffffafb6a000
0xffffafb6a000 <accept_pointer>:        0xd10043ff      0xf90007e0
```

It is pointing at the `accept_pointer()` function instead, so the first
bytes of that function are loaded and treated as if they are the pointer
to `f1()`.

The issue appears to be that GOT relocations are incorrectly handled
when they refer to symbols defined as weak in the same object, where a
definition already exists.

## Running

```
llvm-rtdyld --execute --entry send_pointer2 c/accept_pointer.o c/send_pointer1.o c/send_pointer2.o
loaded 'send_pointer2' at: 0xffffb18ac000
PLEASE submit a bug report to https://github.com/llvm/llvm-project/issues/ and include the crash backtrace.
Stack dump:
0.	Program arguments: /home/gmarkall/numbadev/install-llvm/main-20230310/bin/llvm-rtdyld --execute --entry send_pointer2 c/accept_pointer.o c/send_pointer1.o c/send_pointer2.o
Segmentation fault (core dumped)
```
