;================================================================================
;----------------------------------ASSEMBLY nrt----------------------------------
	.text
	.file	"<string>"
	.globl	nrt_atomic_add
	.p2align	2
	.type	nrt_atomic_add,@function
nrt_atomic_add:
	mov	w8, #1
	ldadd	x8, x8, [x0]
	add	x0, x8, #1
	ret
.Lfunc_end0:
	.size	nrt_atomic_add, .Lfunc_end0-nrt_atomic_add

	.globl	nrt_atomic_sub
	.p2align	2
	.type	nrt_atomic_sub,@function
nrt_atomic_sub:
	mov	x8, #-1
	ldadd	x8, x8, [x0]
	sub	x0, x8, #1
	ret
.Lfunc_end1:
	.size	nrt_atomic_sub, .Lfunc_end1-nrt_atomic_sub

	.globl	nrt_atomic_cas
	.p2align	2
	.type	nrt_atomic_cas,@function
nrt_atomic_cas:
	mov	x8, x1
	cas	x8, x2, [x0]
	cmp	x8, x1
	cset	w0, eq
	str	x8, [x3]
	ret
.Lfunc_end2:
	.size	nrt_atomic_cas, .Lfunc_end2-nrt_atomic_cas

	.globl	NRT_MemInfo_data_fast
	.p2align	2
	.type	NRT_MemInfo_data_fast,@function
NRT_MemInfo_data_fast:
	ldr	x0, [x0, #24]
	ret
.Lfunc_end3:
	.size	NRT_MemInfo_data_fast, .Lfunc_end3-NRT_MemInfo_data_fast

	.globl	NRT_incref
	.p2align	2
	.type	NRT_incref,@function
NRT_incref:
	cbz	x0, .LBB4_2
	mov	w8, #1
	ldadd	x8, x8, [x0]
.LBB4_2:
	ret
.Lfunc_end4:
	.size	NRT_incref, .Lfunc_end4-NRT_incref

	.globl	NRT_decref
	.p2align	2
	.type	NRT_decref,@function
NRT_decref:
	.cfi_startproc
	cbz	x0, .LBB5_2
	dmb	ish
	mov	x8, #-1
	ldadd	x8, x8, [x0]
	cmp	x8, #1
	b.eq	.LBB5_3
.LBB5_2:
	ret
.LBB5_3:
	dmb	ishld
	b	NRT_MemInfo_call_dtor
.Lfunc_end5:
	.size	NRT_decref, .Lfunc_end5-NRT_decref
	.cfi_endproc

	.globl	nrt_unresolved_abort
	.p2align	2
	.type	nrt_unresolved_abort,@function
nrt_unresolved_abort:
	movz	x8, #:abs_g0_nc:.const.picklebuf.281473380428800
	movk	x8, #:abs_g1_nc:.const.picklebuf.281473380428800
	movk	x8, #:abs_g2_nc:.const.picklebuf.281473380428800
	movk	x8, #:abs_g3:.const.picklebuf.281473380428800
	mov	w0, #1
	str	x8, [x1]
	ret
.Lfunc_end6:
	.size	nrt_unresolved_abort, .Lfunc_end6-nrt_unresolved_abort

	.type	.const.pickledata.281473380428800,@object
	.section	.rodata,"a",@progbits
	.p2align	4
.const.pickledata.281473380428800:
	.ascii	"\200\004\225[\000\000\000\000\000\000\000\214\bbuiltins\224\214\fRuntimeError\224\223\224\2146numba jitted function aborted due to unresolved symbol\224\205\224N\207\224."
	.size	.const.pickledata.281473380428800, 102

	.type	.const.pickledata.281473380428800.sha1,@object
	.p2align	4
.const.pickledata.281473380428800.sha1:
	.ascii	"\227\276\334\337\354\216\200\267\t>P\316%\355V\367r\016\f\234"
	.size	.const.pickledata.281473380428800.sha1, 20

	.type	.const.picklebuf.281473380428800,@object
	.p2align	4
.const.picklebuf.281473380428800:
	.xword	.const.pickledata.281473380428800
	.word	102
	.zero	4
	.xword	.const.pickledata.281473380428800.sha1
	.size	.const.picklebuf.281473380428800, 24

	.section	".note.GNU-stack","",@progbits

;================================================================================
;================================================================================
;----------------------ASSEMBLY impl_new_list.<locals>.imp-----------------------
	.text
	.file	"<string>"
	.globl	_ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v2B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE16class_28int64_29x
	.p2align	2
	.type	_ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v2B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE16class_28int64_29x,@function
_ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v2B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE16class_28int64_29x:
	.cfi_startproc
	sub	sp, sp, #64
	stp	x30, x21, [sp, #32]
	stp	x20, x19, [sp, #48]
	.cfi_def_cfa_offset 64
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w30, -32
	mov	x19, x1
	tbnz	x3, #63, .LBB0_3
	mov	x20, x0
	str	xzr, [sp, #24]
	add	x0, sp, #24
	mov	w1, #8
	mov	x2, x3
	bl	numba_list_new
	cbz	w0, .LBB0_4
	movz	x8, #:abs_g0_nc:.const.picklebuf.281473371862976
	movk	x8, #:abs_g1_nc:.const.picklebuf.281473371862976
	movk	x8, #:abs_g2_nc:.const.picklebuf.281473371862976
	movk	x8, #:abs_g3:.const.picklebuf.281473371862976
	str	x8, [x19]
	mov	w0, #1
	ldp	x20, x19, [sp, #48]
	ldp	x30, x21, [sp, #32]
	add	sp, sp, #64
	ret
.LBB0_3:
	movz	x8, #:abs_g0_nc:.const.picklebuf.281473371984704
	movk	x8, #:abs_g1_nc:.const.picklebuf.281473371984704
	movk	x8, #:abs_g2_nc:.const.picklebuf.281473371984704
	movk	x8, #:abs_g3:.const.picklebuf.281473371984704
	str	x8, [x19]
	mov	w0, #1
	ldp	x20, x19, [sp, #48]
	ldp	x30, x21, [sp, #32]
	add	sp, sp, #64
	ret
.LBB0_4:
	ldr	x21, [sp, #24]
	stp	xzr, xzr, [sp, #8]
	add	x1, sp, #8
	mov	x0, x21
	bl	numba_list_set_method_table
	adrp	x1, :got:_numba_list_dtor
	ldr	x1, [x1, :got_lo12:_numba_list_dtor]
	mov	w0, #8
	bl	NRT_MemInfo_alloc_dtor
	cbz	x0, .LBB0_6
	mov	x8, x0
	mov	w0, wzr
	ldr	x9, [x8, #24]
	str	x21, [x9]
	stp	x8, x21, [x20]
	ldp	x20, x19, [sp, #48]
	ldp	x30, x21, [sp, #32]
	add	sp, sp, #64
	ret
.LBB0_6:
	movz	x8, #:abs_g0_nc:.const.picklebuf.281473371707584
	movk	x8, #:abs_g1_nc:.const.picklebuf.281473371707584
	movk	x8, #:abs_g2_nc:.const.picklebuf.281473371707584
	movk	x8, #:abs_g3:.const.picklebuf.281473371707584
	str	x8, [x19]
	mov	w0, #1
	ldp	x20, x19, [sp, #48]
	ldp	x30, x21, [sp, #32]
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	_ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v2B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE16class_28int64_29x, .Lfunc_end0-_ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v2B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE16class_28int64_29x
	.cfi_endproc

	.weak	_numba_list_dtor
	.p2align	2
	.type	_numba_list_dtor,@function
_numba_list_dtor:
	.cfi_startproc
	ldr	x0, [x0]
	b	numba_list_free
.Lfunc_end1:
	.size	_numba_list_dtor, .Lfunc_end1-_numba_list_dtor
	.cfi_endproc

	.globl	cfunc._ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v2B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE16class_28int64_29x
	.p2align	2
	.type	cfunc._ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v2B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE16class_28int64_29x,@function
cfunc._ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v2B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE16class_28int64_29x:
	.cfi_startproc
	sub	sp, sp, #80
	stp	xzr, x30, [sp, #24]
	stp	x22, x21, [sp, #48]
	stp	x20, x19, [sp, #64]
	.cfi_def_cfa_offset 80
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w30, -48
	mov	x3, x1
	str	xzr, [sp, #16]
	str	xzr, [sp, #40]
	add	x0, sp, #16
	add	x1, sp, #40
	bl	_ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v2B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE16class_28int64_29x
	ldr	x22, [sp, #40]
	ldp	x19, x20, [sp, #16]
	str	wzr, [sp, #12]
	cbnz	w0, .LBB2_2
.LBB2_1:
	mov	x0, x19
	mov	x1, x20
	ldp	x20, x19, [sp, #64]
	ldp	x22, x21, [sp, #48]
	ldr	x30, [sp, #32]
	add	sp, sp, #80
	ret
.LBB2_2:
	mov	w21, w0
	add	x0, sp, #12
	bl	numba_gil_ensure
	cmp	w21, #0
	b.le	.LBB2_5
	bl	PyErr_Clear
	ldr	x2, [x22, #16]
	ldr	w1, [x22, #8]
	ldr	x0, [x22]
	bl	numba_unpickle
	cbz	x0, .LBB2_6
	bl	numba_do_raise
	b	.LBB2_6
.LBB2_5:
	movz	x1, #:abs_g0_nc:".const.unknown error when calling native function"
	movk	x1, #:abs_g1_nc:".const.unknown error when calling native function"
	movk	x1, #:abs_g2_nc:".const.unknown error when calling native function"
	movk	x1, #:abs_g3:".const.unknown error when calling native function"
	adrp	x0, :got:PyExc_SystemError
	ldr	x0, [x0, :got_lo12:PyExc_SystemError]
	bl	PyErr_SetString
.LBB2_6:
	movz	x0, #:abs_g0_nc:".const.<numba.core.cpu.CPUContext object at 0xffffa04fdc30>"
	movk	x0, #:abs_g1_nc:".const.<numba.core.cpu.CPUContext object at 0xffffa04fdc30>"
	movk	x0, #:abs_g2_nc:".const.<numba.core.cpu.CPUContext object at 0xffffa04fdc30>"
	movk	x0, #:abs_g3:".const.<numba.core.cpu.CPUContext object at 0xffffa04fdc30>"
	bl	PyUnicode_FromString
	mov	x21, x0
	bl	PyErr_WriteUnraisable
	mov	x0, x21
	bl	Py_DecRef
	add	x0, sp, #12
	bl	numba_gil_release
	b	.LBB2_1
.Lfunc_end2:
	.size	cfunc._ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v2B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE16class_28int64_29x, .Lfunc_end2-cfunc._ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v2B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE16class_28int64_29x
	.cfi_endproc

	.type	_ZN08NumbaEnv5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v2B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE16class_28int64_29x,@object
	.comm	_ZN08NumbaEnv5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v2B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE16class_28int64_29x,8,8
	.type	.const.pickledata.281473371984704,@object
	.section	.rodata,"a",@progbits
	.p2align	4
.const.pickledata.281473371984704:
	.ascii	"\200\004\225\211\000\000\000\000\000\000\000\214\bbuiltins\224\214\fRuntimeError\224\223\224\214 expecting *allocated* to be >= 0\224\205\224\214\003imp\224\2147/home/gmarkall/numbadev/numba/numba/typed/listobject.py\224M\211\001\207\224\207\224."
	.size	.const.pickledata.281473371984704, 148

	.type	.const.pickledata.281473371984704.sha1,@object
	.p2align	4
.const.pickledata.281473371984704.sha1:
	.ascii	"\322N,l\321\210n\023\272\336{\231H\267)_\204\222\020H"
	.size	.const.pickledata.281473371984704.sha1, 20

	.type	.const.picklebuf.281473371984704,@object
	.p2align	4
.const.picklebuf.281473371984704:
	.xword	.const.pickledata.281473371984704
	.word	148
	.zero	4
	.xword	.const.pickledata.281473371984704.sha1
	.size	.const.picklebuf.281473371984704, 24

	.type	.const.pickledata.281473371862976,@object
	.p2align	4
.const.pickledata.281473371862976:
	.ascii	"\200\004\225<\000\000\000\000\000\000\000\214\bbuiltins\224\214\fRuntimeError\224\223\224\214\027Failed to allocate list\224\205\224N\207\224."
	.size	.const.pickledata.281473371862976, 71

	.type	.const.pickledata.281473371862976.sha1,@object
	.p2align	4
.const.pickledata.281473371862976.sha1:
	.ascii	"R\340\274]\364,D\257\242W\333x\204`\262\231\256\213\2066"
	.size	.const.pickledata.281473371862976.sha1, 20

	.type	.const.picklebuf.281473371862976,@object
	.p2align	4
.const.picklebuf.281473371862976:
	.xword	.const.pickledata.281473371862976
	.word	71
	.zero	4
	.xword	.const.pickledata.281473371862976.sha1
	.size	.const.picklebuf.281473371862976, 24

	.type	.const.pickledata.281473371707584,@object
	.p2align	4
.const.pickledata.281473371707584:
	.ascii	"\200\004\225K\000\000\000\000\000\000\000\214\bbuiltins\224\214\013MemoryError\224\223\224\214'Allocation failed (probably too large).\224\205\224N\207\224."
	.size	.const.pickledata.281473371707584, 86

	.type	.const.pickledata.281473371707584.sha1,@object
	.p2align	4
.const.pickledata.281473371707584.sha1:
	.ascii	"\272(\235\201\360\\p \363G|\025sH\004\337e\253\342\t"
	.size	.const.pickledata.281473371707584.sha1, 20

	.type	.const.picklebuf.281473371707584,@object
	.p2align	4
.const.picklebuf.281473371707584:
	.xword	.const.pickledata.281473371707584
	.word	86
	.zero	4
	.xword	.const.pickledata.281473371707584.sha1
	.size	.const.picklebuf.281473371707584, 24

	.type	".const.unknown error when calling native function",@object
	.p2align	4
".const.unknown error when calling native function":
	.asciz	"unknown error when calling native function"
	.size	".const.unknown error when calling native function", 43

	.type	".const.<numba.core.cpu.CPUContext object at 0xffffa04fdc30>",@object
	.p2align	4
".const.<numba.core.cpu.CPUContext object at 0xffffa04fdc30>":
	.asciz	"<numba.core.cpu.CPUContext object at 0xffffa04fdc30>"
	.size	".const.<numba.core.cpu.CPUContext object at 0xffffa04fdc30>", 53

	.section	".note.GNU-stack","",@progbits

;================================================================================
;================================================================================
;------------------------------ASSEMBLY _make_list-------------------------------
	.text
	.file	"<string>"
	.globl	_ZN5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x
	.p2align	2
	.type	_ZN5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x,@function
_ZN5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x:
	.cfi_startproc
	sub	sp, sp, #64
	stp	x30, x21, [sp, #32]
	stp	x20, x19, [sp, #48]
	.cfi_def_cfa_offset 64
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w30, -32
	mov	x19, x1
	tbnz	x3, #63, .LBB0_3
	mov	x20, x0
	str	xzr, [sp, #24]
	add	x0, sp, #24
	mov	w1, #8
	mov	x2, x3
	bl	numba_list_new
	cbz	w0, .LBB0_4
	movz	x8, #:abs_g0_nc:.const.picklebuf.281473371862976
	movk	x8, #:abs_g1_nc:.const.picklebuf.281473371862976
	movk	x8, #:abs_g2_nc:.const.picklebuf.281473371862976
	movk	x8, #:abs_g3:.const.picklebuf.281473371862976
	str	x8, [x19]
	mov	w0, #1
	ldp	x20, x19, [sp, #48]
	ldp	x30, x21, [sp, #32]
	add	sp, sp, #64
	ret
.LBB0_3:
	movz	x8, #:abs_g0_nc:.const.picklebuf.281473371984704
	movk	x8, #:abs_g1_nc:.const.picklebuf.281473371984704
	movk	x8, #:abs_g2_nc:.const.picklebuf.281473371984704
	movk	x8, #:abs_g3:.const.picklebuf.281473371984704
	str	x8, [x19]
	mov	w0, #1
	ldp	x20, x19, [sp, #48]
	ldp	x30, x21, [sp, #32]
	add	sp, sp, #64
	ret
.LBB0_4:
	ldr	x21, [sp, #24]
	stp	xzr, xzr, [sp, #8]
	add	x1, sp, #8
	mov	x0, x21
	bl	numba_list_set_method_table
	adrp	x1, :got:_numba_list_dtor
	ldr	x1, [x1, :got_lo12:_numba_list_dtor]
	mov	w0, #8
	bl	NRT_MemInfo_alloc_dtor
	cbz	x0, .LBB0_6
	mov	x8, x0
	mov	w0, wzr
	ldr	x9, [x8, #24]
	str	x21, [x9]
	str	x8, [x20]
	ldp	x20, x19, [sp, #48]
	ldp	x30, x21, [sp, #32]
	add	sp, sp, #64
	ret
.LBB0_6:
	movz	x8, #:abs_g0_nc:.const.picklebuf.281473371707584
	movk	x8, #:abs_g1_nc:.const.picklebuf.281473371707584
	movk	x8, #:abs_g2_nc:.const.picklebuf.281473371707584
	movk	x8, #:abs_g3:.const.picklebuf.281473371707584
	str	x8, [x19]
	mov	w0, #1
	ldp	x20, x19, [sp, #48]
	ldp	x30, x21, [sp, #32]
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	_ZN5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x, .Lfunc_end0-_ZN5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x
	.cfi_endproc

	.globl	_ZN7cpython5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x
	.p2align	2
	.type	_ZN7cpython5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x,@function
_ZN7cpython5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x:
	.cfi_startproc
	sub	sp, sp, #64
	str	x30, [sp, #32]
	stp	x20, x19, [sp, #48]
	.cfi_def_cfa_offset 64
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w30, -32
	mov	x0, x1
	movz	x1, #:abs_g0_nc:.const._make_list
	add	x4, sp, #40
	add	x5, sp, #24
	movk	x1, #:abs_g1_nc:.const._make_list
	movk	x1, #:abs_g2_nc:.const._make_list
	movk	x1, #:abs_g3:.const._make_list
	mov	w2, #2
	mov	w3, #2
	bl	PyArg_UnpackTuple
	str	xzr, [sp, #8]
	cbz	w0, .LBB1_11
	adrp	x8, :got:_ZN08NumbaEnv5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x
	ldr	x8, [x8, :got_lo12:_ZN08NumbaEnv5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x]
	ldr	x8, [x8]
	cbz	x8, .LBB1_13
	ldr	x0, [sp, #24]
	bl	PyNumber_Long
	cbz	x0, .LBB1_14
	mov	x20, x0
	bl	PyLong_AsLongLong
	mov	x19, x0
	mov	x0, x20
	bl	Py_DecRef
	bl	PyErr_Occurred
	cbnz	x0, .LBB1_11
.LBB1_4:
	str	xzr, [sp, #16]
	add	x0, sp, #16
	add	x1, sp, #8
	mov	x3, x19
	bl	_ZN5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x
	cmn	w0, #2
	b.eq	.LBB1_6
	cbnz	w0, .LBB1_8
.LBB1_6:
	ldr	x0, [sp, #16]
	bl	NRT_meminfo_as_pyobject
.LBB1_7:
	ldp	x20, x19, [sp, #48]
	ldr	x30, [sp, #32]
	add	sp, sp, #64
	ret
.LBB1_8:
	cmp	w0, #0
	b.le	.LBB1_12
	ldr	x19, [sp, #8]
	bl	PyErr_Clear
	ldr	x2, [x19, #16]
	ldr	w1, [x19, #8]
	ldr	x0, [x19]
	bl	numba_unpickle
	cbz	x0, .LBB1_7
	bl	numba_do_raise
.LBB1_11:
	mov	x0, xzr
	ldp	x20, x19, [sp, #48]
	ldr	x30, [sp, #32]
	add	sp, sp, #64
	ret
.LBB1_12:
	movz	x1, #:abs_g0_nc:".const.unknown error when calling native function"
	movk	x1, #:abs_g1_nc:".const.unknown error when calling native function"
	movk	x1, #:abs_g2_nc:".const.unknown error when calling native function"
	movk	x1, #:abs_g3:".const.unknown error when calling native function"
	adrp	x0, :got:PyExc_SystemError
	ldr	x0, [x0, :got_lo12:PyExc_SystemError]
	bl	PyErr_SetString
	mov	x0, xzr
	ldp	x20, x19, [sp, #48]
	ldr	x30, [sp, #32]
	add	sp, sp, #64
	ret
.LBB1_13:
	movz	x1, #:abs_g0_nc:".const.missing Environment: _ZN08NumbaEnv5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x"
	movk	x1, #:abs_g1_nc:".const.missing Environment: _ZN08NumbaEnv5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x"
	movk	x1, #:abs_g2_nc:".const.missing Environment: _ZN08NumbaEnv5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x"
	movk	x1, #:abs_g3:".const.missing Environment: _ZN08NumbaEnv5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x"
	adrp	x0, :got:PyExc_RuntimeError
	ldr	x0, [x0, :got_lo12:PyExc_RuntimeError]
	bl	PyErr_SetString
	mov	x0, xzr
	ldp	x20, x19, [sp, #48]
	ldr	x30, [sp, #32]
	add	sp, sp, #64
	ret
.LBB1_14:
	mov	x19, xzr
	bl	PyErr_Occurred
	cbz	x0, .LBB1_4
	b	.LBB1_11
.Lfunc_end1:
	.size	_ZN7cpython5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x, .Lfunc_end1-_ZN7cpython5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x
	.cfi_endproc

	.globl	cfunc._ZN5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x
	.p2align	2
	.type	cfunc._ZN5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x,@function
cfunc._ZN5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x:
	.cfi_startproc
	sub	sp, sp, #64
	stp	x30, x21, [sp, #32]
	stp	x20, x19, [sp, #48]
	.cfi_def_cfa_offset 64
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w30, -32
	mov	x3, x1
	stp	xzr, xzr, [sp, #16]
	add	x0, sp, #24
	add	x1, sp, #16
	bl	_ZN5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x
	ldp	x21, x19, [sp, #16]
	str	wzr, [sp, #12]
	cbnz	w0, .LBB2_2
	mov	x0, x19
	ldp	x20, x19, [sp, #48]
	ldp	x30, x21, [sp, #32]
	add	sp, sp, #64
	ret
.LBB2_2:
	mov	w20, w0
	add	x0, sp, #12
	bl	numba_gil_ensure
	cmp	w20, #0
	b.le	.LBB2_5
	bl	PyErr_Clear
	ldr	x2, [x21, #16]
	ldr	w1, [x21, #8]
	ldr	x0, [x21]
	bl	numba_unpickle
	cbz	x0, .LBB2_6
	bl	numba_do_raise
	b	.LBB2_6
.LBB2_5:
	movz	x1, #:abs_g0_nc:".const.unknown error when calling native function.1"
	movk	x1, #:abs_g1_nc:".const.unknown error when calling native function.1"
	movk	x1, #:abs_g2_nc:".const.unknown error when calling native function.1"
	movk	x1, #:abs_g3:".const.unknown error when calling native function.1"
	adrp	x0, :got:PyExc_SystemError
	ldr	x0, [x0, :got_lo12:PyExc_SystemError]
	bl	PyErr_SetString
.LBB2_6:
	movz	x0, #:abs_g0_nc:".const.<numba.core.cpu.CPUContext object at 0xffffa04fd0f0>"
	movk	x0, #:abs_g1_nc:".const.<numba.core.cpu.CPUContext object at 0xffffa04fd0f0>"
	movk	x0, #:abs_g2_nc:".const.<numba.core.cpu.CPUContext object at 0xffffa04fd0f0>"
	movk	x0, #:abs_g3:".const.<numba.core.cpu.CPUContext object at 0xffffa04fd0f0>"
	bl	PyUnicode_FromString
	mov	x20, x0
	bl	PyErr_WriteUnraisable
	mov	x0, x20
	bl	Py_DecRef
	add	x0, sp, #12
	bl	numba_gil_release
	mov	x0, x19
	ldp	x20, x19, [sp, #48]
	ldp	x30, x21, [sp, #32]
	add	sp, sp, #64
	ret
.Lfunc_end2:
	.size	cfunc._ZN5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x, .Lfunc_end2-cfunc._ZN5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x
	.cfi_endproc

	.weak	_numba_list_dtor
	.p2align	2
	.type	_numba_list_dtor,@function
_numba_list_dtor:
	.cfi_startproc
	ldr	x0, [x0]
	b	numba_list_free
.Lfunc_end3:
	.size	_numba_list_dtor, .Lfunc_end3-_numba_list_dtor
	.cfi_endproc

	.type	.const._make_list,@object
	.section	.rodata,"a",@progbits
	.p2align	2
.const._make_list:
	.asciz	"_make_list"
	.size	.const._make_list, 11

	.type	_ZN08NumbaEnv5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x,@object
	.comm	_ZN08NumbaEnv5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x,8,8
	.type	".const.missing Environment: _ZN08NumbaEnv5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x",@object
	.p2align	4
".const.missing Environment: _ZN08NumbaEnv5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x":
	.asciz	"missing Environment: _ZN08NumbaEnv5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x"
	.size	".const.missing Environment: _ZN08NumbaEnv5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x", 134

	.type	".const.unknown error when calling native function",@object
	.p2align	4
".const.unknown error when calling native function":
	.asciz	"unknown error when calling native function"
	.size	".const.unknown error when calling native function", 43

	.type	".const.unknown error when calling native function.1",@object
	.p2align	4
".const.unknown error when calling native function.1":
	.asciz	"unknown error when calling native function"
	.size	".const.unknown error when calling native function.1", 43

	.type	".const.<numba.core.cpu.CPUContext object at 0xffffa04fd0f0>",@object
	.p2align	4
".const.<numba.core.cpu.CPUContext object at 0xffffa04fd0f0>":
	.asciz	"<numba.core.cpu.CPUContext object at 0xffffa04fd0f0>"
	.size	".const.<numba.core.cpu.CPUContext object at 0xffffa04fd0f0>", 53

	.type	_ZN08NumbaEnv5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v2B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE16class_28int64_29x,@object
	.comm	_ZN08NumbaEnv5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v2B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE16class_28int64_29x,8,8
	.type	.const.pickledata.281473371984704,@object
	.p2align	4
.const.pickledata.281473371984704:
	.ascii	"\200\004\225\211\000\000\000\000\000\000\000\214\bbuiltins\224\214\fRuntimeError\224\223\224\214 expecting *allocated* to be >= 0\224\205\224\214\003imp\224\2147/home/gmarkall/numbadev/numba/numba/typed/listobject.py\224M\211\001\207\224\207\224."
	.size	.const.pickledata.281473371984704, 148

	.type	.const.pickledata.281473371984704.sha1,@object
	.p2align	4
.const.pickledata.281473371984704.sha1:
	.ascii	"\322N,l\321\210n\023\272\336{\231H\267)_\204\222\020H"
	.size	.const.pickledata.281473371984704.sha1, 20

	.type	.const.picklebuf.281473371984704,@object
	.p2align	4
.const.picklebuf.281473371984704:
	.xword	.const.pickledata.281473371984704
	.word	148
	.zero	4
	.xword	.const.pickledata.281473371984704.sha1
	.size	.const.picklebuf.281473371984704, 24

	.type	.const.pickledata.281473371862976,@object
	.p2align	4
.const.pickledata.281473371862976:
	.ascii	"\200\004\225<\000\000\000\000\000\000\000\214\bbuiltins\224\214\fRuntimeError\224\223\224\214\027Failed to allocate list\224\205\224N\207\224."
	.size	.const.pickledata.281473371862976, 71

	.type	.const.pickledata.281473371862976.sha1,@object
	.p2align	4
.const.pickledata.281473371862976.sha1:
	.ascii	"R\340\274]\364,D\257\242W\333x\204`\262\231\256\213\2066"
	.size	.const.pickledata.281473371862976.sha1, 20

	.type	.const.picklebuf.281473371862976,@object
	.p2align	4
.const.picklebuf.281473371862976:
	.xword	.const.pickledata.281473371862976
	.word	71
	.zero	4
	.xword	.const.pickledata.281473371862976.sha1
	.size	.const.picklebuf.281473371862976, 24

	.type	.const.pickledata.281473371707584,@object
	.p2align	4
.const.pickledata.281473371707584:
	.ascii	"\200\004\225K\000\000\000\000\000\000\000\214\bbuiltins\224\214\013MemoryError\224\223\224\214'Allocation failed (probably too large).\224\205\224N\207\224."
	.size	.const.pickledata.281473371707584, 86

	.type	.const.pickledata.281473371707584.sha1,@object
	.p2align	4
.const.pickledata.281473371707584.sha1:
	.ascii	"\272(\235\201\360\\p \363G|\025sH\004\337e\253\342\t"
	.size	.const.pickledata.281473371707584.sha1, 20

	.type	.const.picklebuf.281473371707584,@object
	.p2align	4
.const.picklebuf.281473371707584:
	.xword	.const.pickledata.281473371707584
	.word	86
	.zero	4
	.xword	.const.pickledata.281473371707584.sha1
	.size	.const.picklebuf.281473371707584, 24

	.section	".note.GNU-stack","",@progbits

;================================================================================
;================================================================================
;----------------------ASSEMBLY impl_new_list.<locals>.imp-----------------------
	.text
	.file	"<string>"
	.globl	_ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx
	.p2align	2
	.type	_ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx,@function
_ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx:
	.cfi_startproc
	sub	sp, sp, #64
	stp	x30, x21, [sp, #32]
	stp	x20, x19, [sp, #48]
	.cfi_def_cfa_offset 64
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w30, -32
	mov	x19, x1
	tbnz	x3, #63, .LBB0_3
	mov	x20, x0
	str	xzr, [sp, #24]
	add	x0, sp, #24
	mov	w1, #16
	mov	x2, x3
	bl	numba_list_new
	cbz	w0, .LBB0_4
	movz	x8, #:abs_g0_nc:.const.picklebuf.281473370947136
	movk	x8, #:abs_g1_nc:.const.picklebuf.281473370947136
	movk	x8, #:abs_g2_nc:.const.picklebuf.281473370947136
	movk	x8, #:abs_g3:.const.picklebuf.281473370947136
	str	x8, [x19]
	mov	w0, #1
	ldp	x20, x19, [sp, #48]
	ldp	x30, x21, [sp, #32]
	add	sp, sp, #64
	ret
.LBB0_3:
	movz	x8, #:abs_g0_nc:.const.picklebuf.281473368917568
	movk	x8, #:abs_g1_nc:.const.picklebuf.281473368917568
	movk	x8, #:abs_g2_nc:.const.picklebuf.281473368917568
	movk	x8, #:abs_g3:.const.picklebuf.281473368917568
	str	x8, [x19]
	mov	w0, #1
	ldp	x20, x19, [sp, #48]
	ldp	x30, x21, [sp, #32]
	add	sp, sp, #64
	ret
.LBB0_4:
	ldr	x21, [sp, #24]
	adrp	x8, :got:.numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_incref
	ldr	x8, [x8, :got_lo12:.numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_incref]
	adrp	x9, :got:.numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_decref
	ldr	x9, [x9, :got_lo12:.numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_decref]
	stp	x8, x9, [sp, #8]
	add	x1, sp, #8
	mov	x0, x21
	bl	numba_list_set_method_table
	adrp	x1, :got:_numba_list_dtor
	ldr	x1, [x1, :got_lo12:_numba_list_dtor]
	mov	w0, #8
	bl	NRT_MemInfo_alloc_dtor
	cbz	x0, .LBB0_6
	mov	x8, x0
	mov	w0, wzr
	ldr	x9, [x8, #24]
	str	x21, [x9]
	stp	x8, x21, [x20]
	ldp	x20, x19, [sp, #48]
	ldp	x30, x21, [sp, #32]
	add	sp, sp, #64
	ret
.LBB0_6:
	movz	x8, #:abs_g0_nc:.const.picklebuf.281473370640192
	movk	x8, #:abs_g1_nc:.const.picklebuf.281473370640192
	movk	x8, #:abs_g2_nc:.const.picklebuf.281473370640192
	movk	x8, #:abs_g3:.const.picklebuf.281473370640192
	str	x8, [x19]
	mov	w0, #1
	ldp	x20, x19, [sp, #48]
	ldp	x30, x21, [sp, #32]
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	_ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx, .Lfunc_end0-_ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx
	.cfi_endproc

	.globl	.numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_incref
	.p2align	2
	.type	.numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_incref,@function
.numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_incref:
	ldr	x0, [x0]
	b	NRT_incref
.Lfunc_end1:
	.size	.numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_incref, .Lfunc_end1-.numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_incref

	.globl	.numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_decref
	.p2align	2
	.type	.numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_decref,@function
.numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_decref:
	.cfi_startproc
	ldr	x0, [x0]
	b	NRT_decref
.Lfunc_end2:
	.size	.numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_decref, .Lfunc_end2-.numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_decref
	.cfi_endproc

	.weak	_numba_list_dtor
	.p2align	2
	.type	_numba_list_dtor,@function
_numba_list_dtor:
	.cfi_startproc
	ldr	x0, [x0]
	b	numba_list_free
.Lfunc_end3:
	.size	_numba_list_dtor, .Lfunc_end3-_numba_list_dtor
	.cfi_endproc

	.globl	cfunc._ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx
	.p2align	2
	.type	cfunc._ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx,@function
cfunc._ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx:
	.cfi_startproc
	sub	sp, sp, #80
	stp	xzr, x30, [sp, #24]
	stp	x22, x21, [sp, #48]
	stp	x20, x19, [sp, #64]
	.cfi_def_cfa_offset 80
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w30, -48
	mov	x3, x1
	str	xzr, [sp, #16]
	str	xzr, [sp, #40]
	add	x0, sp, #16
	add	x1, sp, #40
	bl	_ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx
	ldr	x22, [sp, #40]
	ldp	x19, x20, [sp, #16]
	str	wzr, [sp, #12]
	cbnz	w0, .LBB4_2
.LBB4_1:
	mov	x0, x19
	mov	x1, x20
	ldp	x20, x19, [sp, #64]
	ldp	x22, x21, [sp, #48]
	ldr	x30, [sp, #32]
	add	sp, sp, #80
	ret
.LBB4_2:
	mov	w21, w0
	add	x0, sp, #12
	bl	numba_gil_ensure
	cmp	w21, #0
	b.le	.LBB4_5
	bl	PyErr_Clear
	ldr	x2, [x22, #16]
	ldr	w1, [x22, #8]
	ldr	x0, [x22]
	bl	numba_unpickle
	cbz	x0, .LBB4_6
	bl	numba_do_raise
	b	.LBB4_6
.LBB4_5:
	movz	x1, #:abs_g0_nc:".const.unknown error when calling native function"
	movk	x1, #:abs_g1_nc:".const.unknown error when calling native function"
	movk	x1, #:abs_g2_nc:".const.unknown error when calling native function"
	movk	x1, #:abs_g3:".const.unknown error when calling native function"
	adrp	x0, :got:PyExc_SystemError
	ldr	x0, [x0, :got_lo12:PyExc_SystemError]
	bl	PyErr_SetString
.LBB4_6:
	movz	x0, #:abs_g0_nc:".const.<numba.core.cpu.CPUContext object at 0xffffa0492ec0>"
	movk	x0, #:abs_g1_nc:".const.<numba.core.cpu.CPUContext object at 0xffffa0492ec0>"
	movk	x0, #:abs_g2_nc:".const.<numba.core.cpu.CPUContext object at 0xffffa0492ec0>"
	movk	x0, #:abs_g3:".const.<numba.core.cpu.CPUContext object at 0xffffa0492ec0>"
	bl	PyUnicode_FromString
	mov	x21, x0
	bl	PyErr_WriteUnraisable
	mov	x0, x21
	bl	Py_DecRef
	add	x0, sp, #12
	bl	numba_gil_release
	b	.LBB4_1
.Lfunc_end4:
	.size	cfunc._ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx, .Lfunc_end4-cfunc._ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx
	.cfi_endproc

	.weak	NRT_incref
	.p2align	2
	.type	NRT_incref,@function
NRT_incref:
	cbz	x0, .LBB5_2
	mov	w8, #1
	ldadd	x8, x8, [x0]
.LBB5_2:
	ret
.Lfunc_end5:
	.size	NRT_incref, .Lfunc_end5-NRT_incref

	.weak	NRT_decref
	.p2align	2
	.type	NRT_decref,@function
NRT_decref:
	.cfi_startproc
	cbz	x0, .LBB6_2
	dmb	ish
	mov	x8, #-1
	ldadd	x8, x8, [x0]
	cmp	x8, #1
	b.eq	.LBB6_3
.LBB6_2:
	ret
.LBB6_3:
	dmb	ishld
	b	NRT_MemInfo_call_dtor
.Lfunc_end6:
	.size	NRT_decref, .Lfunc_end6-NRT_decref
	.cfi_endproc

	.type	_ZN08NumbaEnv5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx,@object
	.comm	_ZN08NumbaEnv5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx,8,8
	.type	.const.pickledata.281473368917568,@object
	.section	.rodata,"a",@progbits
	.p2align	4
.const.pickledata.281473368917568:
	.ascii	"\200\004\225\211\000\000\000\000\000\000\000\214\bbuiltins\224\214\fRuntimeError\224\223\224\214 expecting *allocated* to be >= 0\224\205\224\214\003imp\224\2147/home/gmarkall/numbadev/numba/numba/typed/listobject.py\224M\211\001\207\224\207\224."
	.size	.const.pickledata.281473368917568, 148

	.type	.const.pickledata.281473368917568.sha1,@object
	.p2align	4
.const.pickledata.281473368917568.sha1:
	.ascii	"\322N,l\321\210n\023\272\336{\231H\267)_\204\222\020H"
	.size	.const.pickledata.281473368917568.sha1, 20

	.type	.const.picklebuf.281473368917568,@object
	.p2align	4
.const.picklebuf.281473368917568:
	.xword	.const.pickledata.281473368917568
	.word	148
	.zero	4
	.xword	.const.pickledata.281473368917568.sha1
	.size	.const.picklebuf.281473368917568, 24

	.type	.const.pickledata.281473370947136,@object
	.p2align	4
.const.pickledata.281473370947136:
	.ascii	"\200\004\225<\000\000\000\000\000\000\000\214\bbuiltins\224\214\fRuntimeError\224\223\224\214\027Failed to allocate list\224\205\224N\207\224."
	.size	.const.pickledata.281473370947136, 71

	.type	.const.pickledata.281473370947136.sha1,@object
	.p2align	4
.const.pickledata.281473370947136.sha1:
	.ascii	"R\340\274]\364,D\257\242W\333x\204`\262\231\256\213\2066"
	.size	.const.pickledata.281473370947136.sha1, 20

	.type	.const.picklebuf.281473370947136,@object
	.p2align	4
.const.picklebuf.281473370947136:
	.xword	.const.pickledata.281473370947136
	.word	71
	.zero	4
	.xword	.const.pickledata.281473370947136.sha1
	.size	.const.picklebuf.281473370947136, 24

	.type	.const.pickledata.281473370640192,@object
	.p2align	4
.const.pickledata.281473370640192:
	.ascii	"\200\004\225K\000\000\000\000\000\000\000\214\bbuiltins\224\214\013MemoryError\224\223\224\214'Allocation failed (probably too large).\224\205\224N\207\224."
	.size	.const.pickledata.281473370640192, 86

	.type	.const.pickledata.281473370640192.sha1,@object
	.p2align	4
.const.pickledata.281473370640192.sha1:
	.ascii	"\272(\235\201\360\\p \363G|\025sH\004\337e\253\342\t"
	.size	.const.pickledata.281473370640192.sha1, 20

	.type	.const.picklebuf.281473370640192,@object
	.p2align	4
.const.picklebuf.281473370640192:
	.xword	.const.pickledata.281473370640192
	.word	86
	.zero	4
	.xword	.const.pickledata.281473370640192.sha1
	.size	.const.picklebuf.281473370640192, 24

	.type	".const.unknown error when calling native function",@object
	.p2align	4
".const.unknown error when calling native function":
	.asciz	"unknown error when calling native function"
	.size	".const.unknown error when calling native function", 43

	.type	".const.<numba.core.cpu.CPUContext object at 0xffffa0492ec0>",@object
	.p2align	4
".const.<numba.core.cpu.CPUContext object at 0xffffa0492ec0>":
	.asciz	"<numba.core.cpu.CPUContext object at 0xffffa0492ec0>"
	.size	".const.<numba.core.cpu.CPUContext object at 0xffffa0492ec0>", 53

	.section	".note.GNU-stack","",@progbits

;================================================================================
;================================================================================
;------------------------------ASSEMBLY _make_list-------------------------------
	.text
	.file	"<string>"
	.globl	_ZN5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx
	.p2align	2
	.type	_ZN5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx,@function
_ZN5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx:
	.cfi_startproc
	sub	sp, sp, #64
	stp	x30, x21, [sp, #32]
	stp	x20, x19, [sp, #48]
	.cfi_def_cfa_offset 64
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w30, -32
	mov	x19, x1
	tbnz	x3, #63, .LBB0_3
	mov	x20, x0
	str	xzr, [sp, #24]
	add	x0, sp, #24
	mov	w1, #16
	mov	x2, x3
	bl	numba_list_new
	cbz	w0, .LBB0_4
	movz	x8, #:abs_g0_nc:.const.picklebuf.281473370947136
	movk	x8, #:abs_g1_nc:.const.picklebuf.281473370947136
	movk	x8, #:abs_g2_nc:.const.picklebuf.281473370947136
	movk	x8, #:abs_g3:.const.picklebuf.281473370947136
	str	x8, [x19]
	mov	w0, #1
	ldp	x20, x19, [sp, #48]
	ldp	x30, x21, [sp, #32]
	add	sp, sp, #64
	ret
.LBB0_3:
	movz	x8, #:abs_g0_nc:.const.picklebuf.281473368917568
	movk	x8, #:abs_g1_nc:.const.picklebuf.281473368917568
	movk	x8, #:abs_g2_nc:.const.picklebuf.281473368917568
	movk	x8, #:abs_g3:.const.picklebuf.281473368917568
	str	x8, [x19]
	mov	w0, #1
	ldp	x20, x19, [sp, #48]
	ldp	x30, x21, [sp, #32]
	add	sp, sp, #64
	ret
.LBB0_4:
	ldr	x21, [sp, #24]
	adrp	x8, :got:.numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_incref
	ldr	x8, [x8, :got_lo12:.numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_incref]
	adrp	x9, :got:.numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_decref
	ldr	x9, [x9, :got_lo12:.numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_decref]
	stp	x8, x9, [sp, #8]
	add	x1, sp, #8
	mov	x0, x21
	bl	numba_list_set_method_table
	adrp	x1, :got:_numba_list_dtor
	ldr	x1, [x1, :got_lo12:_numba_list_dtor]
	mov	w0, #8
	bl	NRT_MemInfo_alloc_dtor
	cbz	x0, .LBB0_6
	mov	x8, x0
	mov	w0, wzr
	ldr	x9, [x8, #24]
	str	x21, [x9]
	str	x8, [x20]
	ldp	x20, x19, [sp, #48]
	ldp	x30, x21, [sp, #32]
	add	sp, sp, #64
	ret
.LBB0_6:
	movz	x8, #:abs_g0_nc:.const.picklebuf.281473370640192
	movk	x8, #:abs_g1_nc:.const.picklebuf.281473370640192
	movk	x8, #:abs_g2_nc:.const.picklebuf.281473370640192
	movk	x8, #:abs_g3:.const.picklebuf.281473370640192
	str	x8, [x19]
	mov	w0, #1
	ldp	x20, x19, [sp, #48]
	ldp	x30, x21, [sp, #32]
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	_ZN5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx, .Lfunc_end0-_ZN5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx
	.cfi_endproc

	.globl	_ZN7cpython5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx
	.p2align	2
	.type	_ZN7cpython5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx,@function
_ZN7cpython5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx:
	.cfi_startproc
	sub	sp, sp, #64
	str	x30, [sp, #32]
	stp	x20, x19, [sp, #48]
	.cfi_def_cfa_offset 64
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w30, -32
	mov	x0, x1
	movz	x1, #:abs_g0_nc:.const._make_list
	add	x4, sp, #40
	add	x5, sp, #24
	movk	x1, #:abs_g1_nc:.const._make_list
	movk	x1, #:abs_g2_nc:.const._make_list
	movk	x1, #:abs_g3:.const._make_list
	mov	w2, #2
	mov	w3, #2
	bl	PyArg_UnpackTuple
	str	xzr, [sp, #8]
	cbz	w0, .LBB1_11
	adrp	x8, :got:_ZN08NumbaEnv5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx
	ldr	x8, [x8, :got_lo12:_ZN08NumbaEnv5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx]
	ldr	x8, [x8]
	cbz	x8, .LBB1_13
	ldr	x0, [sp, #24]
	bl	PyNumber_Long
	cbz	x0, .LBB1_14
	mov	x20, x0
	bl	PyLong_AsLongLong
	mov	x19, x0
	mov	x0, x20
	bl	Py_DecRef
	bl	PyErr_Occurred
	cbnz	x0, .LBB1_11
.LBB1_4:
	str	xzr, [sp, #16]
	add	x0, sp, #16
	add	x1, sp, #8
	mov	x3, x19
	bl	_ZN5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx
	cmn	w0, #2
	b.eq	.LBB1_6
	cbnz	w0, .LBB1_8
.LBB1_6:
	ldr	x0, [sp, #16]
	bl	NRT_meminfo_as_pyobject
.LBB1_7:
	ldp	x20, x19, [sp, #48]
	ldr	x30, [sp, #32]
	add	sp, sp, #64
	ret
.LBB1_8:
	cmp	w0, #0
	b.le	.LBB1_12
	ldr	x19, [sp, #8]
	bl	PyErr_Clear
	ldr	x2, [x19, #16]
	ldr	w1, [x19, #8]
	ldr	x0, [x19]
	bl	numba_unpickle
	cbz	x0, .LBB1_7
	bl	numba_do_raise
.LBB1_11:
	mov	x0, xzr
	ldp	x20, x19, [sp, #48]
	ldr	x30, [sp, #32]
	add	sp, sp, #64
	ret
.LBB1_12:
	movz	x1, #:abs_g0_nc:".const.unknown error when calling native function"
	movk	x1, #:abs_g1_nc:".const.unknown error when calling native function"
	movk	x1, #:abs_g2_nc:".const.unknown error when calling native function"
	movk	x1, #:abs_g3:".const.unknown error when calling native function"
	adrp	x0, :got:PyExc_SystemError
	ldr	x0, [x0, :got_lo12:PyExc_SystemError]
	bl	PyErr_SetString
	mov	x0, xzr
	ldp	x20, x19, [sp, #48]
	ldr	x30, [sp, #32]
	add	sp, sp, #64
	ret
.LBB1_13:
	movz	x1, #:abs_g0_nc:".const.missing Environment: _ZN08NumbaEnv5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx"
	movk	x1, #:abs_g1_nc:".const.missing Environment: _ZN08NumbaEnv5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx"
	movk	x1, #:abs_g2_nc:".const.missing Environment: _ZN08NumbaEnv5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx"
	movk	x1, #:abs_g3:".const.missing Environment: _ZN08NumbaEnv5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx"
	adrp	x0, :got:PyExc_RuntimeError
	ldr	x0, [x0, :got_lo12:PyExc_RuntimeError]
	bl	PyErr_SetString
	mov	x0, xzr
	ldp	x20, x19, [sp, #48]
	ldr	x30, [sp, #32]
	add	sp, sp, #64
	ret
.LBB1_14:
	mov	x19, xzr
	bl	PyErr_Occurred
	cbz	x0, .LBB1_4
	b	.LBB1_11
.Lfunc_end1:
	.size	_ZN7cpython5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx, .Lfunc_end1-_ZN7cpython5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx
	.cfi_endproc

	.globl	cfunc._ZN5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx
	.p2align	2
	.type	cfunc._ZN5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx,@function
cfunc._ZN5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx:
	.cfi_startproc
	sub	sp, sp, #64
	stp	x30, x21, [sp, #32]
	stp	x20, x19, [sp, #48]
	.cfi_def_cfa_offset 64
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w30, -32
	mov	x3, x1
	stp	xzr, xzr, [sp, #16]
	add	x0, sp, #24
	add	x1, sp, #16
	bl	_ZN5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx
	ldp	x21, x19, [sp, #16]
	str	wzr, [sp, #12]
	cbnz	w0, .LBB2_2
	mov	x0, x19
	ldp	x20, x19, [sp, #48]
	ldp	x30, x21, [sp, #32]
	add	sp, sp, #64
	ret
.LBB2_2:
	mov	w20, w0
	add	x0, sp, #12
	bl	numba_gil_ensure
	cmp	w20, #0
	b.le	.LBB2_5
	bl	PyErr_Clear
	ldr	x2, [x21, #16]
	ldr	w1, [x21, #8]
	ldr	x0, [x21]
	bl	numba_unpickle
	cbz	x0, .LBB2_6
	bl	numba_do_raise
	b	.LBB2_6
.LBB2_5:
	movz	x1, #:abs_g0_nc:".const.unknown error when calling native function.1"
	movk	x1, #:abs_g1_nc:".const.unknown error when calling native function.1"
	movk	x1, #:abs_g2_nc:".const.unknown error when calling native function.1"
	movk	x1, #:abs_g3:".const.unknown error when calling native function.1"
	adrp	x0, :got:PyExc_SystemError
	ldr	x0, [x0, :got_lo12:PyExc_SystemError]
	bl	PyErr_SetString
.LBB2_6:
	movz	x0, #:abs_g0_nc:".const.<numba.core.cpu.CPUContext object at 0xffffa046bb80>"
	movk	x0, #:abs_g1_nc:".const.<numba.core.cpu.CPUContext object at 0xffffa046bb80>"
	movk	x0, #:abs_g2_nc:".const.<numba.core.cpu.CPUContext object at 0xffffa046bb80>"
	movk	x0, #:abs_g3:".const.<numba.core.cpu.CPUContext object at 0xffffa046bb80>"
	bl	PyUnicode_FromString
	mov	x20, x0
	bl	PyErr_WriteUnraisable
	mov	x0, x20
	bl	Py_DecRef
	add	x0, sp, #12
	bl	numba_gil_release
	mov	x0, x19
	ldp	x20, x19, [sp, #48]
	ldp	x30, x21, [sp, #32]
	add	sp, sp, #64
	ret
.Lfunc_end2:
	.size	cfunc._ZN5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx, .Lfunc_end2-cfunc._ZN5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx
	.cfi_endproc

	.weak	.numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_incref
	.p2align	2
	.type	.numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_incref,@function
.numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_incref:
	ldr	x0, [x0]
	b	NRT_incref
.Lfunc_end3:
	.size	.numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_incref, .Lfunc_end3-.numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_incref

	.weak	.numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_decref
	.p2align	2
	.type	.numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_decref,@function
.numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_decref:
	.cfi_startproc
	ldr	x0, [x0]
	b	NRT_decref
.Lfunc_end4:
	.size	.numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_decref, .Lfunc_end4-.numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_decref
	.cfi_endproc

	.weak	_numba_list_dtor
	.p2align	2
	.type	_numba_list_dtor,@function
_numba_list_dtor:
	.cfi_startproc
	ldr	x0, [x0]
	b	numba_list_free
.Lfunc_end5:
	.size	_numba_list_dtor, .Lfunc_end5-_numba_list_dtor
	.cfi_endproc

	.weak	NRT_decref
	.p2align	2
	.type	NRT_decref,@function
NRT_decref:
	.cfi_startproc
	cbz	x0, .LBB6_2
	dmb	ish
	mov	x8, #-1
	ldadd	x8, x8, [x0]
	cmp	x8, #1
	b.eq	.LBB6_3
.LBB6_2:
	ret
.LBB6_3:
	dmb	ishld
	b	NRT_MemInfo_call_dtor
.Lfunc_end6:
	.size	NRT_decref, .Lfunc_end6-NRT_decref
	.cfi_endproc

	.weak	NRT_incref
	.p2align	2
	.type	NRT_incref,@function
NRT_incref:
	cbz	x0, .LBB7_2
	mov	w8, #1
	ldadd	x8, x8, [x0]
.LBB7_2:
	ret
.Lfunc_end7:
	.size	NRT_incref, .Lfunc_end7-NRT_incref

	.type	.const._make_list,@object
	.section	.rodata,"a",@progbits
	.p2align	2
.const._make_list:
	.asciz	"_make_list"
	.size	.const._make_list, 11

	.type	_ZN08NumbaEnv5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx,@object
	.comm	_ZN08NumbaEnv5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx,8,8
	.type	".const.missing Environment: _ZN08NumbaEnv5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx",@object
	.p2align	4
".const.missing Environment: _ZN08NumbaEnv5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx":
	.asciz	"missing Environment: _ZN08NumbaEnv5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx"
	.size	".const.missing Environment: _ZN08NumbaEnv5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx", 150

	.type	".const.unknown error when calling native function",@object
	.p2align	4
".const.unknown error when calling native function":
	.asciz	"unknown error when calling native function"
	.size	".const.unknown error when calling native function", 43

	.type	".const.unknown error when calling native function.1",@object
	.p2align	4
".const.unknown error when calling native function.1":
	.asciz	"unknown error when calling native function"
	.size	".const.unknown error when calling native function.1", 43

	.type	".const.<numba.core.cpu.CPUContext object at 0xffffa046bb80>",@object
	.p2align	4
".const.<numba.core.cpu.CPUContext object at 0xffffa046bb80>":
	.asciz	"<numba.core.cpu.CPUContext object at 0xffffa046bb80>"
	.size	".const.<numba.core.cpu.CPUContext object at 0xffffa046bb80>", 53

	.type	_ZN08NumbaEnv5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx,@object
	.comm	_ZN08NumbaEnv5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx,8,8
	.type	.const.pickledata.281473368917568,@object
	.p2align	4
.const.pickledata.281473368917568:
	.ascii	"\200\004\225\211\000\000\000\000\000\000\000\214\bbuiltins\224\214\fRuntimeError\224\223\224\214 expecting *allocated* to be >= 0\224\205\224\214\003imp\224\2147/home/gmarkall/numbadev/numba/numba/typed/listobject.py\224M\211\001\207\224\207\224."
	.size	.const.pickledata.281473368917568, 148

	.type	.const.pickledata.281473368917568.sha1,@object
	.p2align	4
.const.pickledata.281473368917568.sha1:
	.ascii	"\322N,l\321\210n\023\272\336{\231H\267)_\204\222\020H"
	.size	.const.pickledata.281473368917568.sha1, 20

	.type	.const.picklebuf.281473368917568,@object
	.p2align	4
.const.picklebuf.281473368917568:
	.xword	.const.pickledata.281473368917568
	.word	148
	.zero	4
	.xword	.const.pickledata.281473368917568.sha1
	.size	.const.picklebuf.281473368917568, 24

	.type	.const.pickledata.281473370947136,@object
	.p2align	4
.const.pickledata.281473370947136:
	.ascii	"\200\004\225<\000\000\000\000\000\000\000\214\bbuiltins\224\214\fRuntimeError\224\223\224\214\027Failed to allocate list\224\205\224N\207\224."
	.size	.const.pickledata.281473370947136, 71

	.type	.const.pickledata.281473370947136.sha1,@object
	.p2align	4
.const.pickledata.281473370947136.sha1:
	.ascii	"R\340\274]\364,D\257\242W\333x\204`\262\231\256\213\2066"
	.size	.const.pickledata.281473370947136.sha1, 20

	.type	.const.picklebuf.281473370947136,@object
	.p2align	4
.const.picklebuf.281473370947136:
	.xword	.const.pickledata.281473370947136
	.word	71
	.zero	4
	.xword	.const.pickledata.281473370947136.sha1
	.size	.const.picklebuf.281473370947136, 24

	.type	.const.pickledata.281473370640192,@object
	.p2align	4
.const.pickledata.281473370640192:
	.ascii	"\200\004\225K\000\000\000\000\000\000\000\214\bbuiltins\224\214\013MemoryError\224\223\224\214'Allocation failed (probably too large).\224\205\224N\207\224."
	.size	.const.pickledata.281473370640192, 86

	.type	.const.pickledata.281473370640192.sha1,@object
	.p2align	4
.const.pickledata.281473370640192.sha1:
	.ascii	"\272(\235\201\360\\p \363G|\025sH\004\337e\253\342\t"
	.size	.const.pickledata.281473370640192.sha1, 20

	.type	.const.picklebuf.281473370640192,@object
	.p2align	4
.const.picklebuf.281473370640192:
	.xword	.const.pickledata.281473370640192
	.word	86
	.zero	4
	.xword	.const.pickledata.281473370640192.sha1
	.size	.const.picklebuf.281473370640192, 24

	.section	".note.GNU-stack","",@progbits

;================================================================================
;================================================================================
;-----------------------ASSEMBLY impl_append.<locals>.impl-----------------------
	.text
	.file	"<string>"
	.globl	_ZN5numba5typed10listobject11impl_append12_3clocals_3e4implB2v6B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d
	.p2align	2
	.type	_ZN5numba5typed10listobject11impl_append12_3clocals_3e4implB2v6B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d,@function
_ZN5numba5typed10listobject11impl_append12_3clocals_3e4implB2v6B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d:
	.cfi_startproc
	sub	sp, sp, #48
	stp	x5, x30, [sp, #8]
	stp	x20, x19, [sp, #32]
	.cfi_def_cfa_offset 48
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w30, -32
	mov	x19, x1
	mov	x20, x0
	str	x4, [sp]
	mov	x1, sp
	mov	x0, x3
	bl	numba_list_append
	cmn	w0, #5
	b.eq	.LBB0_4
	cmn	w0, #2
	b.eq	.LBB0_5
	cbnz	w0, .LBB0_6
	str	xzr, [x20]
	ldp	x20, x19, [sp, #32]
	ldr	x30, [sp, #16]
	add	sp, sp, #48
	ret
.LBB0_4:
	movz	x8, #:abs_g0_nc:.const.picklebuf.281473370946368
	movk	x8, #:abs_g1_nc:.const.picklebuf.281473370946368
	movk	x8, #:abs_g2_nc:.const.picklebuf.281473370946368
	movk	x8, #:abs_g3:.const.picklebuf.281473370946368
	str	x8, [x19]
	mov	w0, #1
	ldp	x20, x19, [sp, #32]
	ldr	x30, [sp, #16]
	add	sp, sp, #48
	ret
.LBB0_5:
	movz	x8, #:abs_g0_nc:.const.picklebuf.281473370946304
	movk	x8, #:abs_g1_nc:.const.picklebuf.281473370946304
	movk	x8, #:abs_g2_nc:.const.picklebuf.281473370946304
	movk	x8, #:abs_g3:.const.picklebuf.281473370946304
	str	x8, [x19]
	mov	w0, #1
	ldp	x20, x19, [sp, #32]
	ldr	x30, [sp, #16]
	add	sp, sp, #48
	ret
.LBB0_6:
	movz	x8, #:abs_g0_nc:.const.picklebuf.281473370945920
	movk	x8, #:abs_g1_nc:.const.picklebuf.281473370945920
	movk	x8, #:abs_g2_nc:.const.picklebuf.281473370945920
	movk	x8, #:abs_g3:.const.picklebuf.281473370945920
	str	x8, [x19]
	mov	w0, #1
	ldp	x20, x19, [sp, #32]
	ldr	x30, [sp, #16]
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	_ZN5numba5typed10listobject11impl_append12_3clocals_3e4implB2v6B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d, .Lfunc_end0-_ZN5numba5typed10listobject11impl_append12_3clocals_3e4implB2v6B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d
	.cfi_endproc

	.globl	cfunc._ZN5numba5typed10listobject11impl_append12_3clocals_3e4implB2v6B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d
	.p2align	2
	.type	cfunc._ZN5numba5typed10listobject11impl_append12_3clocals_3e4implB2v6B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d,@function
cfunc._ZN5numba5typed10listobject11impl_append12_3clocals_3e4implB2v6B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d:
	.cfi_startproc
	sub	sp, sp, #64
	stp	x30, x21, [sp, #32]
	stp	x20, x19, [sp, #48]
	.cfi_def_cfa_offset 64
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w30, -32
	mov	x5, x3
	mov	x3, x1
	stp	xzr, xzr, [sp, #16]
	add	x0, sp, #24
	add	x1, sp, #16
	mov	x4, x2
	bl	_ZN5numba5typed10listobject11impl_append12_3clocals_3e4implB2v6B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d
	ldp	x21, x19, [sp, #16]
	str	wzr, [sp, #12]
	cbnz	w0, .LBB1_2
	mov	x0, x19
	ldp	x20, x19, [sp, #48]
	ldp	x30, x21, [sp, #32]
	add	sp, sp, #64
	ret
.LBB1_2:
	mov	w20, w0
	add	x0, sp, #12
	bl	numba_gil_ensure
	cmp	w20, #0
	b.le	.LBB1_5
	bl	PyErr_Clear
	ldr	x2, [x21, #16]
	ldr	w1, [x21, #8]
	ldr	x0, [x21]
	bl	numba_unpickle
	cbz	x0, .LBB1_6
	bl	numba_do_raise
	b	.LBB1_6
.LBB1_5:
	movz	x1, #:abs_g0_nc:".const.unknown error when calling native function"
	movk	x1, #:abs_g1_nc:".const.unknown error when calling native function"
	movk	x1, #:abs_g2_nc:".const.unknown error when calling native function"
	movk	x1, #:abs_g3:".const.unknown error when calling native function"
	adrp	x0, :got:PyExc_SystemError
	ldr	x0, [x0, :got_lo12:PyExc_SystemError]
	bl	PyErr_SetString
.LBB1_6:
	movz	x0, #:abs_g0_nc:".const.<numba.core.cpu.CPUContext object at 0xffffa02d81c0>"
	movk	x0, #:abs_g1_nc:".const.<numba.core.cpu.CPUContext object at 0xffffa02d81c0>"
	movk	x0, #:abs_g2_nc:".const.<numba.core.cpu.CPUContext object at 0xffffa02d81c0>"
	movk	x0, #:abs_g3:".const.<numba.core.cpu.CPUContext object at 0xffffa02d81c0>"
	bl	PyUnicode_FromString
	mov	x20, x0
	bl	PyErr_WriteUnraisable
	mov	x0, x20
	bl	Py_DecRef
	add	x0, sp, #12
	bl	numba_gil_release
	mov	x0, x19
	ldp	x20, x19, [sp, #48]
	ldp	x30, x21, [sp, #32]
	add	sp, sp, #64
	ret
.Lfunc_end1:
	.size	cfunc._ZN5numba5typed10listobject11impl_append12_3clocals_3e4implB2v6B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d, .Lfunc_end1-cfunc._ZN5numba5typed10listobject11impl_append12_3clocals_3e4implB2v6B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d
	.cfi_endproc

	.type	_ZN08NumbaEnv5numba5typed10listobject11impl_append12_3clocals_3e4implB2v6B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d,@object
	.comm	_ZN08NumbaEnv5numba5typed10listobject11impl_append12_3clocals_3e4implB2v6B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d,8,8
	.type	.const.pickledata.281473370946368,@object
	.section	.rodata,"a",@progbits
	.p2align	4
.const.pickledata.281473370946368:
	.ascii	"\200\004\225y\000\000\000\000\000\000\000\214\bbuiltins\224\214\nValueError\224\223\224\214\021list is immutable\224\205\224\214\004impl\224\2147/home/gmarkall/numbadev/numba/numba/typed/listobject.py\224M]\002\207\224\207\224."
	.size	.const.pickledata.281473370946368, 132

	.type	.const.pickledata.281473370946368.sha1,@object
	.p2align	4
.const.pickledata.281473370946368.sha1:
	.ascii	";\302F\247\273\200J7\311,\357\202\325\334\203\357:$g\370"
	.size	.const.pickledata.281473370946368.sha1, 20

	.type	.const.picklebuf.281473370946368,@object
	.p2align	4
.const.picklebuf.281473370946368:
	.xword	.const.pickledata.281473370946368
	.word	132
	.zero	4
	.xword	.const.pickledata.281473370946368.sha1
	.size	.const.picklebuf.281473370946368, 24

	.type	.const.pickledata.281473370946304,@object
	.p2align	4
.const.pickledata.281473370946304:
	.ascii	"\200\004\225\221\000\000\000\000\000\000\000\214\bbuiltins\224\214\013MemoryError\224\223\224\214(Unable to allocate memory to append item\224\205\224\214\004impl\224\2147/home/gmarkall/numbadev/numba/numba/typed/listobject.py\224M_\002\207\224\207\224."
	.size	.const.pickledata.281473370946304, 156

	.type	.const.pickledata.281473370946304.sha1,@object
	.p2align	4
.const.pickledata.281473370946304.sha1:
	.ascii	"+\374v\227G\t8\350\221\236\374d\352\331C\312\355\201\341b"
	.size	.const.pickledata.281473370946304.sha1, 20

	.type	.const.picklebuf.281473370946304,@object
	.p2align	4
.const.picklebuf.281473370946304:
	.xword	.const.pickledata.281473370946304
	.word	156
	.zero	4
	.xword	.const.pickledata.281473370946304.sha1
	.size	.const.picklebuf.281473370946304, 24

	.type	.const.pickledata.281473370945920,@object
	.p2align	4
.const.pickledata.281473370945920:
	.ascii	"\200\004\225\211\000\000\000\000\000\000\000\214\bbuiltins\224\214\fRuntimeError\224\223\224\214\037list.append failed unexpectedly\224\205\224\214\004impl\224\2147/home/gmarkall/numbadev/numba/numba/typed/listobject.py\224Ma\002\207\224\207\224."
	.size	.const.pickledata.281473370945920, 148

	.type	.const.pickledata.281473370945920.sha1,@object
	.p2align	4
.const.pickledata.281473370945920.sha1:
	.ascii	"\212t\201'\377\332\003\347\267\037\330.\246`\206\344\314\023Y\373"
	.size	.const.pickledata.281473370945920.sha1, 20

	.type	.const.picklebuf.281473370945920,@object
	.p2align	4
.const.picklebuf.281473370945920:
	.xword	.const.pickledata.281473370945920
	.word	148
	.zero	4
	.xword	.const.pickledata.281473370945920.sha1
	.size	.const.picklebuf.281473370945920, 24

	.type	".const.unknown error when calling native function",@object
	.p2align	4
".const.unknown error when calling native function":
	.asciz	"unknown error when calling native function"
	.size	".const.unknown error when calling native function", 43

	.type	".const.<numba.core.cpu.CPUContext object at 0xffffa02d81c0>",@object
	.p2align	4
".const.<numba.core.cpu.CPUContext object at 0xffffa02d81c0>":
	.asciz	"<numba.core.cpu.CPUContext object at 0xffffa02d81c0>"
	.size	".const.<numba.core.cpu.CPUContext object at 0xffffa02d81c0>", 53

	.section	".note.GNU-stack","",@progbits

;================================================================================
;================================================================================
;--------------------------------ASSEMBLY _append--------------------------------
	.text
	.file	"<string>"
	.globl	_ZN5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d
	.p2align	2
	.type	_ZN5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d,@function
_ZN5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d:
	.cfi_startproc
	sub	sp, sp, #80
	str	x30, [sp, #16]
	stp	x24, x23, [sp, #32]
	stp	x22, x21, [sp, #48]
	stp	x20, x19, [sp, #64]
	.cfi_def_cfa_offset 80
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w30, -64
	mov	x23, x5
	mov	x22, x4
	mov	x24, x3
	mov	x21, x2
	mov	x19, x1
	mov	x20, x0
	mov	x0, x2
	bl	NRT_incref
	mov	x0, x22
	bl	NRT_incref
	stp	x22, x23, [sp]
	mov	x1, sp
	mov	x0, x24
	bl	numba_list_append
	cmn	w0, #5
	b.eq	.LBB0_4
	cbz	w0, .LBB0_5
	cmn	w0, #2
	b.ne	.LBB0_6
	movz	x8, #:abs_g0_nc:.const.picklebuf.281473370946304
	movk	x8, #:abs_g1_nc:.const.picklebuf.281473370946304
	movk	x8, #:abs_g2_nc:.const.picklebuf.281473370946304
	movk	x8, #:abs_g3:.const.picklebuf.281473370946304
	b	.LBB0_7
.LBB0_4:
	movz	x8, #:abs_g0_nc:.const.picklebuf.281473370946368
	movk	x8, #:abs_g1_nc:.const.picklebuf.281473370946368
	movk	x8, #:abs_g2_nc:.const.picklebuf.281473370946368
	movk	x8, #:abs_g3:.const.picklebuf.281473370946368
	b	.LBB0_7
.LBB0_5:
	mov	x0, x22
	bl	NRT_decref
	mov	x0, x21
	bl	NRT_decref
	mov	w0, wzr
	str	xzr, [x20]
	ldp	x20, x19, [sp, #64]
	ldp	x22, x21, [sp, #48]
	ldp	x24, x23, [sp, #32]
	ldr	x30, [sp, #16]
	add	sp, sp, #80
	ret
.LBB0_6:
	movz	x8, #:abs_g0_nc:.const.picklebuf.281473370945920
	movk	x8, #:abs_g1_nc:.const.picklebuf.281473370945920
	movk	x8, #:abs_g2_nc:.const.picklebuf.281473370945920
	movk	x8, #:abs_g3:.const.picklebuf.281473370945920
.LBB0_7:
	str	x8, [x19]
	mov	w0, #1
	ldp	x20, x19, [sp, #64]
	ldp	x22, x21, [sp, #48]
	ldp	x24, x23, [sp, #32]
	ldr	x30, [sp, #16]
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	_ZN5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d, .Lfunc_end0-_ZN5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d
	.cfi_endproc

	.globl	_ZN7cpython5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d
	.p2align	2
	.type	_ZN7cpython5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d,@function
_ZN7cpython5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d:
	.cfi_startproc
	sub	sp, sp, #112
	str	x30, [sp, #32]
	stp	x26, x25, [sp, #48]
	stp	x24, x23, [sp, #64]
	stp	x22, x21, [sp, #80]
	stp	x20, x19, [sp, #96]
	.cfi_def_cfa_offset 112
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w25, -56
	.cfi_offset w26, -64
	.cfi_offset w30, -80
	mov	x0, x1
	movz	x1, #:abs_g0_nc:.const._append
	add	x4, sp, #40
	add	x5, sp, #24
	movk	x1, #:abs_g1_nc:.const._append
	movk	x1, #:abs_g2_nc:.const._append
	movk	x1, #:abs_g3:.const._append
	mov	w2, #2
	mov	w3, #2
	bl	PyArg_UnpackTuple
	stp	xzr, xzr, [sp, #8]
	cbz	w0, .LBB1_17
	adrp	x8, :got:_ZN08NumbaEnv5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d
	ldr	x8, [x8, :got_lo12:_ZN08NumbaEnv5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d]
	ldr	x8, [x8]
	cbz	x8, .LBB1_19
	ldr	x19, [sp, #40]
	movz	x21, #:abs_g0_nc:.const.pickledata.187650752870560
	movz	x23, #:abs_g0_nc:.const.pickledata.187650752870560.sha1
	movk	x21, #:abs_g1_nc:.const.pickledata.187650752870560
	movk	x23, #:abs_g1_nc:.const.pickledata.187650752870560.sha1
	movk	x21, #:abs_g2_nc:.const.pickledata.187650752870560
	movk	x23, #:abs_g2_nc:.const.pickledata.187650752870560.sha1
	movk	x21, #:abs_g3:.const.pickledata.187650752870560
	movk	x23, #:abs_g3:.const.pickledata.187650752870560.sha1
	mov	w1, #45
	mov	x0, x21
	mov	x2, x23
	bl	numba_unpickle
	mov	x24, x0
	mov	x0, x19
	bl	PyObject_Type
	mov	x25, x0
	cmp	x0, x24
	movz	x22, #:abs_g0_nc:".const.can't unbox a %S as a %S"
	b.eq	.LBB1_4
	mov	x1, x22
	movk	x1, #:abs_g1_nc:".const.can't unbox a %S as a %S"
	movk	x1, #:abs_g2_nc:".const.can't unbox a %S as a %S"
	movk	x1, #:abs_g3:".const.can't unbox a %S as a %S"
	adrp	x0, :got:PyExc_TypeError
	ldr	x0, [x0, :got_lo12:PyExc_TypeError]
	mov	x2, x25
	mov	x3, x24
	bl	PyErr_Format
	mov	x19, xzr
	mov	x20, xzr
	mov	x0, x24
	bl	Py_DecRef
	mov	x0, x25
	bl	Py_DecRef
	cmp	x25, x24
	b.eq	.LBB1_5
	b	.LBB1_17
.LBB1_4:
	movz	x1, #:abs_g0_nc:.const._opaque
	movk	x1, #:abs_g1_nc:.const._opaque
	movk	x1, #:abs_g2_nc:.const._opaque
	movk	x1, #:abs_g3:.const._opaque
	mov	x0, x19
	bl	PyObject_GetAttrString
	mov	x26, x0
	bl	NRT_meminfo_from_pyobject
	mov	x19, x0
	ldr	x8, [x0, #24]
	ldr	x20, [x8]
	mov	x0, x26
	bl	Py_DecRef
	mov	x0, x24
	bl	Py_DecRef
	mov	x0, x25
	bl	Py_DecRef
	cmp	x25, x24
	b.ne	.LBB1_17
.LBB1_5:
	ldr	x24, [sp, #24]
	mov	w1, #45
	mov	x0, x21
	mov	x2, x23
	bl	numba_unpickle
	mov	x21, x0
	mov	x0, x24
	bl	PyObject_Type
	mov	x23, x0
	cmp	x0, x21
	b.eq	.LBB1_10
	movk	x22, #:abs_g1_nc:".const.can't unbox a %S as a %S"
	movk	x22, #:abs_g2_nc:".const.can't unbox a %S as a %S"
	movk	x22, #:abs_g3:".const.can't unbox a %S as a %S"
	adrp	x0, :got:PyExc_TypeError
	ldr	x0, [x0, :got_lo12:PyExc_TypeError]
	mov	x1, x22
	mov	x2, x23
	mov	x3, x21
	bl	PyErr_Format
	mov	x22, xzr
	mov	x24, xzr
	mov	x0, x21
	bl	Py_DecRef
	mov	x0, x23
	bl	Py_DecRef
	cmp	x23, x21
	b.ne	.LBB1_11
.LBB1_7:
	str	xzr, [sp, #16]
	add	x0, sp, #16
	add	x1, sp, #8
	mov	x2, x19
	mov	x3, x20
	mov	x4, x22
	mov	x5, x24
	bl	_ZN5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d
	ldr	x21, [sp, #8]
	mov	w20, w0
	mov	x0, x19
	bl	NRT_decref
	mov	x0, x22
	bl	NRT_decref
	cmn	w20, #2
	b.eq	.LBB1_9
	cbnz	w20, .LBB1_12
.LBB1_9:
	adrp	x19, :got:_Py_NoneStruct
	ldr	x19, [x19, :got_lo12:_Py_NoneStruct]
	mov	x0, x19
	bl	Py_IncRef
	b	.LBB1_18
.LBB1_10:
	movz	x1, #:abs_g0_nc:.const._opaque
	movk	x1, #:abs_g1_nc:.const._opaque
	movk	x1, #:abs_g2_nc:.const._opaque
	movk	x1, #:abs_g3:.const._opaque
	mov	x0, x24
	bl	PyObject_GetAttrString
	mov	x25, x0
	bl	NRT_meminfo_from_pyobject
	mov	x22, x0
	ldr	x8, [x0, #24]
	ldr	x24, [x8]
	mov	x0, x25
	bl	Py_DecRef
	mov	x0, x21
	bl	Py_DecRef
	mov	x0, x23
	bl	Py_DecRef
	cmp	x23, x21
	b.eq	.LBB1_7
.LBB1_11:
	mov	x0, x19
	bl	NRT_decref
	b	.LBB1_17
.LBB1_12:
	cmp	w20, #0
	b.le	.LBB1_15
	bl	PyErr_Clear
	ldr	x2, [x21, #16]
	ldr	w1, [x21, #8]
	ldr	x0, [x21]
	bl	numba_unpickle
	cbz	x0, .LBB1_17
	bl	numba_do_raise
	b	.LBB1_17
.LBB1_15:
	movz	x1, #:abs_g0_nc:".const.unknown error when calling native function"
	movk	x1, #:abs_g1_nc:".const.unknown error when calling native function"
	movk	x1, #:abs_g2_nc:".const.unknown error when calling native function"
	movk	x1, #:abs_g3:".const.unknown error when calling native function"
	adrp	x0, :got:PyExc_SystemError
	ldr	x0, [x0, :got_lo12:PyExc_SystemError]
.LBB1_16:
	bl	PyErr_SetString
.LBB1_17:
	mov	x19, xzr
.LBB1_18:
	mov	x0, x19
	ldp	x20, x19, [sp, #96]
	ldp	x22, x21, [sp, #80]
	ldp	x24, x23, [sp, #64]
	ldp	x26, x25, [sp, #48]
	ldr	x30, [sp, #32]
	add	sp, sp, #112
	ret
.LBB1_19:
	movz	x1, #:abs_g0_nc:".const.missing Environment: _ZN08NumbaEnv5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d"
	movk	x1, #:abs_g1_nc:".const.missing Environment: _ZN08NumbaEnv5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d"
	movk	x1, #:abs_g2_nc:".const.missing Environment: _ZN08NumbaEnv5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d"
	movk	x1, #:abs_g3:".const.missing Environment: _ZN08NumbaEnv5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d"
	adrp	x0, :got:PyExc_RuntimeError
	ldr	x0, [x0, :got_lo12:PyExc_RuntimeError]
	b	.LBB1_16
.Lfunc_end1:
	.size	_ZN7cpython5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d, .Lfunc_end1-_ZN7cpython5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d
	.cfi_endproc

	.globl	cfunc._ZN5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d
	.p2align	2
	.type	cfunc._ZN5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d,@function
cfunc._ZN5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d:
	.cfi_startproc
	sub	sp, sp, #64
	stp	x30, x21, [sp, #32]
	stp	x20, x19, [sp, #48]
	.cfi_def_cfa_offset 64
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w30, -32
	mov	x5, x3
	mov	x4, x2
	mov	x3, x1
	mov	x2, x0
	stp	xzr, xzr, [sp, #16]
	add	x0, sp, #24
	add	x1, sp, #16
	bl	_ZN5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d
	ldp	x21, x19, [sp, #16]
	str	wzr, [sp, #12]
	cbnz	w0, .LBB2_2
	mov	x0, x19
	ldp	x20, x19, [sp, #48]
	ldp	x30, x21, [sp, #32]
	add	sp, sp, #64
	ret
.LBB2_2:
	mov	w20, w0
	add	x0, sp, #12
	bl	numba_gil_ensure
	cmp	w20, #0
	b.le	.LBB2_5
	bl	PyErr_Clear
	ldr	x2, [x21, #16]
	ldr	w1, [x21, #8]
	ldr	x0, [x21]
	bl	numba_unpickle
	cbz	x0, .LBB2_6
	bl	numba_do_raise
	b	.LBB2_6
.LBB2_5:
	movz	x1, #:abs_g0_nc:".const.unknown error when calling native function.1"
	movk	x1, #:abs_g1_nc:".const.unknown error when calling native function.1"
	movk	x1, #:abs_g2_nc:".const.unknown error when calling native function.1"
	movk	x1, #:abs_g3:".const.unknown error when calling native function.1"
	adrp	x0, :got:PyExc_SystemError
	ldr	x0, [x0, :got_lo12:PyExc_SystemError]
	bl	PyErr_SetString
.LBB2_6:
	movz	x0, #:abs_g0_nc:".const.<numba.core.cpu.CPUContext object at 0xffffa04fe5f0>"
	movk	x0, #:abs_g1_nc:".const.<numba.core.cpu.CPUContext object at 0xffffa04fe5f0>"
	movk	x0, #:abs_g2_nc:".const.<numba.core.cpu.CPUContext object at 0xffffa04fe5f0>"
	movk	x0, #:abs_g3:".const.<numba.core.cpu.CPUContext object at 0xffffa04fe5f0>"
	bl	PyUnicode_FromString
	mov	x20, x0
	bl	PyErr_WriteUnraisable
	mov	x0, x20
	bl	Py_DecRef
	add	x0, sp, #12
	bl	numba_gil_release
	mov	x0, x19
	ldp	x20, x19, [sp, #48]
	ldp	x30, x21, [sp, #32]
	add	sp, sp, #64
	ret
.Lfunc_end2:
	.size	cfunc._ZN5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d, .Lfunc_end2-cfunc._ZN5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d
	.cfi_endproc

	.weak	NRT_incref
	.p2align	2
	.type	NRT_incref,@function
NRT_incref:
	cbz	x0, .LBB3_2
	mov	w8, #1
	ldadd	x8, x8, [x0]
.LBB3_2:
	ret
.Lfunc_end3:
	.size	NRT_incref, .Lfunc_end3-NRT_incref

	.weak	NRT_decref
	.p2align	2
	.type	NRT_decref,@function
NRT_decref:
	.cfi_startproc
	cbz	x0, .LBB4_2
	dmb	ish
	mov	x8, #-1
	ldadd	x8, x8, [x0]
	cmp	x8, #1
	b.eq	.LBB4_3
.LBB4_2:
	ret
.LBB4_3:
	dmb	ishld
	b	NRT_MemInfo_call_dtor
.Lfunc_end4:
	.size	NRT_decref, .Lfunc_end4-NRT_decref
	.cfi_endproc

	.type	.const._append,@object
	.section	.rodata,"a",@progbits
	.p2align	2
.const._append:
	.asciz	"_append"
	.size	.const._append, 8

	.type	_ZN08NumbaEnv5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d,@object
	.comm	_ZN08NumbaEnv5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d,8,8
	.type	".const.missing Environment: _ZN08NumbaEnv5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d",@object
	.p2align	4
".const.missing Environment: _ZN08NumbaEnv5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d":
	.asciz	"missing Environment: _ZN08NumbaEnv5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d"
	.size	".const.missing Environment: _ZN08NumbaEnv5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d", 167

	.type	.const.pickledata.187650752870560,@object
	.p2align	4
.const.pickledata.187650752870560:
	.ascii	"\200\004\225\"\000\000\000\000\000\000\000\214\025numba.typed.typedlist\224\214\004List\224\223\224."
	.size	.const.pickledata.187650752870560, 45

	.type	.const.pickledata.187650752870560.sha1,@object
	.p2align	4
.const.pickledata.187650752870560.sha1:
	.ascii	"\021[H\3634\317\0247\032\262o\365cd\017\tK'\347\203"
	.size	.const.pickledata.187650752870560.sha1, 20

	.type	.const._opaque,@object
	.p2align	2
.const._opaque:
	.asciz	"_opaque"
	.size	.const._opaque, 8

	.type	".const.can't unbox a %S as a %S",@object
	.p2align	4
".const.can't unbox a %S as a %S":
	.asciz	"can't unbox a %S as a %S"
	.size	".const.can't unbox a %S as a %S", 25

	.type	".const.unknown error when calling native function",@object
	.p2align	4
".const.unknown error when calling native function":
	.asciz	"unknown error when calling native function"
	.size	".const.unknown error when calling native function", 43

	.type	".const.unknown error when calling native function.1",@object
	.p2align	4
".const.unknown error when calling native function.1":
	.asciz	"unknown error when calling native function"
	.size	".const.unknown error when calling native function.1", 43

	.type	".const.<numba.core.cpu.CPUContext object at 0xffffa04fe5f0>",@object
	.p2align	4
".const.<numba.core.cpu.CPUContext object at 0xffffa04fe5f0>":
	.asciz	"<numba.core.cpu.CPUContext object at 0xffffa04fe5f0>"
	.size	".const.<numba.core.cpu.CPUContext object at 0xffffa04fe5f0>", 53

	.type	_ZN08NumbaEnv5numba5typed10listobject11impl_append12_3clocals_3e4implB2v6B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d,@object
	.comm	_ZN08NumbaEnv5numba5typed10listobject11impl_append12_3clocals_3e4implB2v6B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d,8,8
	.type	.const.pickledata.281473370946368,@object
	.p2align	4
.const.pickledata.281473370946368:
	.ascii	"\200\004\225y\000\000\000\000\000\000\000\214\bbuiltins\224\214\nValueError\224\223\224\214\021list is immutable\224\205\224\214\004impl\224\2147/home/gmarkall/numbadev/numba/numba/typed/listobject.py\224M]\002\207\224\207\224."
	.size	.const.pickledata.281473370946368, 132

	.type	.const.pickledata.281473370946368.sha1,@object
	.p2align	4
.const.pickledata.281473370946368.sha1:
	.ascii	";\302F\247\273\200J7\311,\357\202\325\334\203\357:$g\370"
	.size	.const.pickledata.281473370946368.sha1, 20

	.type	.const.picklebuf.281473370946368,@object
	.p2align	4
.const.picklebuf.281473370946368:
	.xword	.const.pickledata.281473370946368
	.word	132
	.zero	4
	.xword	.const.pickledata.281473370946368.sha1
	.size	.const.picklebuf.281473370946368, 24

	.type	.const.pickledata.281473370946304,@object
	.p2align	4
.const.pickledata.281473370946304:
	.ascii	"\200\004\225\221\000\000\000\000\000\000\000\214\bbuiltins\224\214\013MemoryError\224\223\224\214(Unable to allocate memory to append item\224\205\224\214\004impl\224\2147/home/gmarkall/numbadev/numba/numba/typed/listobject.py\224M_\002\207\224\207\224."
	.size	.const.pickledata.281473370946304, 156

	.type	.const.pickledata.281473370946304.sha1,@object
	.p2align	4
.const.pickledata.281473370946304.sha1:
	.ascii	"+\374v\227G\t8\350\221\236\374d\352\331C\312\355\201\341b"
	.size	.const.pickledata.281473370946304.sha1, 20

	.type	.const.picklebuf.281473370946304,@object
	.p2align	4
.const.picklebuf.281473370946304:
	.xword	.const.pickledata.281473370946304
	.word	156
	.zero	4
	.xword	.const.pickledata.281473370946304.sha1
	.size	.const.picklebuf.281473370946304, 24

	.type	.const.pickledata.281473370945920,@object
	.p2align	4
.const.pickledata.281473370945920:
	.ascii	"\200\004\225\211\000\000\000\000\000\000\000\214\bbuiltins\224\214\fRuntimeError\224\223\224\214\037list.append failed unexpectedly\224\205\224\214\004impl\224\2147/home/gmarkall/numbadev/numba/numba/typed/listobject.py\224Ma\002\207\224\207\224."
	.size	.const.pickledata.281473370945920, 148

	.type	.const.pickledata.281473370945920.sha1,@object
	.p2align	4
.const.pickledata.281473370945920.sha1:
	.ascii	"\212t\201'\377\332\003\347\267\037\330.\246`\206\344\314\023Y\373"
	.size	.const.pickledata.281473370945920.sha1, 20

	.type	.const.picklebuf.281473370945920,@object
	.p2align	4
.const.picklebuf.281473370945920:
	.xword	.const.pickledata.281473370945920
	.word	148
	.zero	4
	.xword	.const.pickledata.281473370945920.sha1
	.size	.const.picklebuf.281473370945920, 24

	.section	".note.GNU-stack","",@progbits
