
obj1.elf:     file format elf64-littleaarch64


obj2.elf:     file format elf64-littleaarch64


Disassembly of section .text:

0000000000000000 <nrt_atomic_add>:
   0:	52800028 	mov	w8, #0x1                   	// #1
   4:	f8280008 	ldadd	x8, x8, [x0]
   8:	91000500 	add	x0, x8, #0x1
   c:	d65f03c0 	ret

0000000000000010 <nrt_atomic_sub>:
  10:	92800008 	mov	x8, #0xffffffffffffffff    	// #-1
  14:	f8280008 	ldadd	x8, x8, [x0]
  18:	d1000500 	sub	x0, x8, #0x1
  1c:	d65f03c0 	ret

0000000000000020 <nrt_atomic_cas>:
  20:	aa0103e8 	mov	x8, x1
  24:	c8a87c02 	cas	x8, x2, [x0]
  28:	eb01011f 	cmp	x8, x1
  2c:	1a9f17e0 	cset	w0, eq  // eq = none
  30:	f9000068 	str	x8, [x3]
  34:	d65f03c0 	ret

0000000000000038 <NRT_MemInfo_data_fast>:
  38:	f9400c00 	ldr	x0, [x0, #24]
  3c:	d65f03c0 	ret

0000000000000040 <NRT_incref>:
  40:	b4000060 	cbz	x0, 4c <NRT_incref+0xc>
  44:	52800028 	mov	w8, #0x1                   	// #1
  48:	f8280008 	ldadd	x8, x8, [x0]
  4c:	d65f03c0 	ret

0000000000000050 <NRT_decref>:
  50:	b40000c0 	cbz	x0, 68 <NRT_decref+0x18>
  54:	d5033bbf 	dmb	ish
  58:	92800008 	mov	x8, #0xffffffffffffffff    	// #-1
  5c:	f8280008 	ldadd	x8, x8, [x0]
  60:	f100051f 	cmp	x8, #0x1
  64:	54000040 	b.eq	6c <NRT_decref+0x1c>  // b.none
  68:	d65f03c0 	ret
  6c:	d50339bf 	dmb	ishld
  70:	14000000 	b	0 <NRT_MemInfo_call_dtor>
			70: R_AARCH64_JUMP26	NRT_MemInfo_call_dtor

0000000000000074 <nrt_unresolved_abort>:
  74:	d2800008 	mov	x8, #0x0                   	// #0
			74: R_AARCH64_MOVW_UABS_G0_NC	.rodata+0x90
  78:	f2a00008 	movk	x8, #0x0, lsl #16
			78: R_AARCH64_MOVW_UABS_G1_NC	.rodata+0x90
  7c:	f2c00008 	movk	x8, #0x0, lsl #32
			7c: R_AARCH64_MOVW_UABS_G2_NC	.rodata+0x90
  80:	f2e00008 	movk	x8, #0x0, lsl #48
			80: R_AARCH64_MOVW_UABS_G3	.rodata+0x90
  84:	52800020 	mov	w0, #0x1                   	// #1
  88:	f9000028 	str	x8, [x1]
  8c:	d65f03c0 	ret

obj3.elf:     file format elf64-littleaarch64


Disassembly of section .text:

0000000000000000 <_ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v2B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE16class_28int64_29x>:
   0:	d10103ff 	sub	sp, sp, #0x40
   4:	a90257fe 	stp	x30, x21, [sp, #32]
   8:	a9034ff4 	stp	x20, x19, [sp, #48]
   c:	aa0103f3 	mov	x19, x1
  10:	b7f80243 	tbnz	x3, #63, 58 <_ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v2B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE16class_28int64_29x+0x58>
  14:	aa0003f4 	mov	x20, x0
  18:	f9000fff 	str	xzr, [sp, #24]
  1c:	910063e0 	add	x0, sp, #0x18
  20:	52800101 	mov	w1, #0x8                   	// #8
  24:	aa0303e2 	mov	x2, x3
  28:	94000000 	bl	0 <numba_list_new>
			28: R_AARCH64_CALL26	numba_list_new
  2c:	340002a0 	cbz	w0, 80 <_ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v2B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE16class_28int64_29x+0x80>
  30:	d2800008 	mov	x8, #0x0                   	// #0
			30: R_AARCH64_MOVW_UABS_G0_NC	.rodata+0x150
  34:	f2a00008 	movk	x8, #0x0, lsl #16
			34: R_AARCH64_MOVW_UABS_G1_NC	.rodata+0x150
  38:	f2c00008 	movk	x8, #0x0, lsl #32
			38: R_AARCH64_MOVW_UABS_G2_NC	.rodata+0x150
  3c:	f2e00008 	movk	x8, #0x0, lsl #48
			3c: R_AARCH64_MOVW_UABS_G3	.rodata+0x150
  40:	f9000268 	str	x8, [x19]
  44:	52800020 	mov	w0, #0x1                   	// #1
  48:	a9434ff4 	ldp	x20, x19, [sp, #48]
  4c:	a94257fe 	ldp	x30, x21, [sp, #32]
  50:	910103ff 	add	sp, sp, #0x40
  54:	d65f03c0 	ret
  58:	d2800008 	mov	x8, #0x0                   	// #0
			58: R_AARCH64_MOVW_UABS_G0_NC	.rodata+0xc0
  5c:	f2a00008 	movk	x8, #0x0, lsl #16
			5c: R_AARCH64_MOVW_UABS_G1_NC	.rodata+0xc0
  60:	f2c00008 	movk	x8, #0x0, lsl #32
			60: R_AARCH64_MOVW_UABS_G2_NC	.rodata+0xc0
  64:	f2e00008 	movk	x8, #0x0, lsl #48
			64: R_AARCH64_MOVW_UABS_G3	.rodata+0xc0
  68:	f9000268 	str	x8, [x19]
  6c:	52800020 	mov	w0, #0x1                   	// #1
  70:	a9434ff4 	ldp	x20, x19, [sp, #48]
  74:	a94257fe 	ldp	x30, x21, [sp, #32]
  78:	910103ff 	add	sp, sp, #0x40
  7c:	d65f03c0 	ret
  80:	f9400ff5 	ldr	x21, [sp, #24]
  84:	a900ffff 	stp	xzr, xzr, [sp, #8]
  88:	910023e1 	add	x1, sp, #0x8
  8c:	aa1503e0 	mov	x0, x21
  90:	94000000 	bl	0 <numba_list_set_method_table>
			90: R_AARCH64_CALL26	numba_list_set_method_table
  94:	90000001 	adrp	x1, f4 <_numba_list_dtor>
			94: R_AARCH64_ADR_GOT_PAGE	_numba_list_dtor
  98:	f9400021 	ldr	x1, [x1]
			98: R_AARCH64_LD64_GOT_LO12_NC	_numba_list_dtor
  9c:	52800100 	mov	w0, #0x8                   	// #8
  a0:	94000000 	bl	0 <NRT_MemInfo_alloc_dtor>
			a0: R_AARCH64_CALL26	NRT_MemInfo_alloc_dtor
  a4:	b4000140 	cbz	x0, cc <_ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v2B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE16class_28int64_29x+0xcc>
  a8:	aa0003e8 	mov	x8, x0
  ac:	2a1f03e0 	mov	w0, wzr
  b0:	f9400d09 	ldr	x9, [x8, #24]
  b4:	f9000135 	str	x21, [x9]
  b8:	a9005688 	stp	x8, x21, [x20]
  bc:	a9434ff4 	ldp	x20, x19, [sp, #48]
  c0:	a94257fe 	ldp	x30, x21, [sp, #32]
  c4:	910103ff 	add	sp, sp, #0x40
  c8:	d65f03c0 	ret
  cc:	d2800008 	mov	x8, #0x0                   	// #0
			cc: R_AARCH64_MOVW_UABS_G0_NC	.rodata+0x1f0
  d0:	f2a00008 	movk	x8, #0x0, lsl #16
			d0: R_AARCH64_MOVW_UABS_G1_NC	.rodata+0x1f0
  d4:	f2c00008 	movk	x8, #0x0, lsl #32
			d4: R_AARCH64_MOVW_UABS_G2_NC	.rodata+0x1f0
  d8:	f2e00008 	movk	x8, #0x0, lsl #48
			d8: R_AARCH64_MOVW_UABS_G3	.rodata+0x1f0
  dc:	f9000268 	str	x8, [x19]
  e0:	52800020 	mov	w0, #0x1                   	// #1
  e4:	a9434ff4 	ldp	x20, x19, [sp, #48]
  e8:	a94257fe 	ldp	x30, x21, [sp, #32]
  ec:	910103ff 	add	sp, sp, #0x40
  f0:	d65f03c0 	ret

00000000000000f4 <_numba_list_dtor>:
  f4:	f9400000 	ldr	x0, [x0]
  f8:	14000000 	b	0 <numba_list_free>
			f8: R_AARCH64_JUMP26	numba_list_free

00000000000000fc <cfunc._ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v2B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE16class_28int64_29x>:
  fc:	d10143ff 	sub	sp, sp, #0x50
 100:	a901fbff 	stp	xzr, x30, [sp, #24]
 104:	a90357f6 	stp	x22, x21, [sp, #48]
 108:	a9044ff4 	stp	x20, x19, [sp, #64]
 10c:	aa0103e3 	mov	x3, x1
 110:	f9000bff 	str	xzr, [sp, #16]
 114:	f90017ff 	str	xzr, [sp, #40]
 118:	910043e0 	add	x0, sp, #0x10
 11c:	9100a3e1 	add	x1, sp, #0x28
 120:	94000000 	bl	0 <_ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v2B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE16class_28int64_29x>
			120: R_AARCH64_CALL26	_ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v2B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE16class_28int64_29x
 124:	f94017f6 	ldr	x22, [sp, #40]
 128:	a94153f3 	ldp	x19, x20, [sp, #16]
 12c:	b9000fff 	str	wzr, [sp, #12]
 130:	35000100 	cbnz	w0, 150 <cfunc._ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v2B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE16class_28int64_29x+0x54>
 134:	aa1303e0 	mov	x0, x19
 138:	aa1403e1 	mov	x1, x20
 13c:	a9444ff4 	ldp	x20, x19, [sp, #64]
 140:	a94357f6 	ldp	x22, x21, [sp, #48]
 144:	f94013fe 	ldr	x30, [sp, #32]
 148:	910143ff 	add	sp, sp, #0x50
 14c:	d65f03c0 	ret
 150:	2a0003f5 	mov	w21, w0
 154:	910033e0 	add	x0, sp, #0xc
 158:	94000000 	bl	0 <numba_gil_ensure>
			158: R_AARCH64_CALL26	numba_gil_ensure
 15c:	710002bf 	cmp	w21, #0x0
 160:	5400012d 	b.le	184 <cfunc._ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v2B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE16class_28int64_29x+0x88>
 164:	94000000 	bl	0 <PyErr_Clear>
			164: R_AARCH64_CALL26	PyErr_Clear
 168:	f9400ac2 	ldr	x2, [x22, #16]
 16c:	b9400ac1 	ldr	w1, [x22, #8]
 170:	f94002c0 	ldr	x0, [x22]
 174:	94000000 	bl	0 <numba_unpickle>
			174: R_AARCH64_CALL26	numba_unpickle
 178:	b4000140 	cbz	x0, 1a0 <cfunc._ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v2B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE16class_28int64_29x+0xa4>
 17c:	94000000 	bl	0 <numba_do_raise>
			17c: R_AARCH64_CALL26	numba_do_raise
 180:	14000008 	b	1a0 <cfunc._ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v2B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE16class_28int64_29x+0xa4>
 184:	d2800001 	mov	x1, #0x0                   	// #0
			184: R_AARCH64_MOVW_UABS_G0_NC	.rodata+0x210
 188:	f2a00001 	movk	x1, #0x0, lsl #16
			188: R_AARCH64_MOVW_UABS_G1_NC	.rodata+0x210
 18c:	f2c00001 	movk	x1, #0x0, lsl #32
			18c: R_AARCH64_MOVW_UABS_G2_NC	.rodata+0x210
 190:	f2e00001 	movk	x1, #0x0, lsl #48
			190: R_AARCH64_MOVW_UABS_G3	.rodata+0x210
 194:	90000000 	adrp	x0, 0 <PyExc_SystemError>
			194: R_AARCH64_ADR_GOT_PAGE	PyExc_SystemError
 198:	f9400000 	ldr	x0, [x0]
			198: R_AARCH64_LD64_GOT_LO12_NC	PyExc_SystemError
 19c:	94000000 	bl	0 <PyErr_SetString>
			19c: R_AARCH64_CALL26	PyErr_SetString
 1a0:	d2800000 	mov	x0, #0x0                   	// #0
			1a0: R_AARCH64_MOVW_UABS_G0_NC	.rodata+0x240
 1a4:	f2a00000 	movk	x0, #0x0, lsl #16
			1a4: R_AARCH64_MOVW_UABS_G1_NC	.rodata+0x240
 1a8:	f2c00000 	movk	x0, #0x0, lsl #32
			1a8: R_AARCH64_MOVW_UABS_G2_NC	.rodata+0x240
 1ac:	f2e00000 	movk	x0, #0x0, lsl #48
			1ac: R_AARCH64_MOVW_UABS_G3	.rodata+0x240
 1b0:	94000000 	bl	0 <PyUnicode_FromString>
			1b0: R_AARCH64_CALL26	PyUnicode_FromString
 1b4:	aa0003f5 	mov	x21, x0
 1b8:	94000000 	bl	0 <PyErr_WriteUnraisable>
			1b8: R_AARCH64_CALL26	PyErr_WriteUnraisable
 1bc:	aa1503e0 	mov	x0, x21
 1c0:	94000000 	bl	0 <Py_DecRef>
			1c0: R_AARCH64_CALL26	Py_DecRef
 1c4:	910033e0 	add	x0, sp, #0xc
 1c8:	94000000 	bl	0 <numba_gil_release>
			1c8: R_AARCH64_CALL26	numba_gil_release
 1cc:	17ffffda 	b	134 <cfunc._ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v2B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE16class_28int64_29x+0x38>

obj4.elf:     file format elf64-littleaarch64


Disassembly of section .text:

0000000000000000 <_ZN5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x>:
   0:	d10103ff 	sub	sp, sp, #0x40
   4:	a90257fe 	stp	x30, x21, [sp, #32]
   8:	a9034ff4 	stp	x20, x19, [sp, #48]
   c:	aa0103f3 	mov	x19, x1
  10:	b7f80243 	tbnz	x3, #63, 58 <_ZN5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x+0x58>
  14:	aa0003f4 	mov	x20, x0
  18:	f9000fff 	str	xzr, [sp, #24]
  1c:	910063e0 	add	x0, sp, #0x18
  20:	52800101 	mov	w1, #0x8                   	// #8
  24:	aa0303e2 	mov	x2, x3
  28:	94000000 	bl	0 <numba_list_new>
			28: R_AARCH64_CALL26	numba_list_new
  2c:	340002a0 	cbz	w0, 80 <_ZN5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x+0x80>
  30:	d2800008 	mov	x8, #0x0                   	// #0
			30: R_AARCH64_MOVW_UABS_G0_NC	.rodata+0x290
  34:	f2a00008 	movk	x8, #0x0, lsl #16
			34: R_AARCH64_MOVW_UABS_G1_NC	.rodata+0x290
  38:	f2c00008 	movk	x8, #0x0, lsl #32
			38: R_AARCH64_MOVW_UABS_G2_NC	.rodata+0x290
  3c:	f2e00008 	movk	x8, #0x0, lsl #48
			3c: R_AARCH64_MOVW_UABS_G3	.rodata+0x290
  40:	f9000268 	str	x8, [x19]
  44:	52800020 	mov	w0, #0x1                   	// #1
  48:	a9434ff4 	ldp	x20, x19, [sp, #48]
  4c:	a94257fe 	ldp	x30, x21, [sp, #32]
  50:	910103ff 	add	sp, sp, #0x40
  54:	d65f03c0 	ret
  58:	d2800008 	mov	x8, #0x0                   	// #0
			58: R_AARCH64_MOVW_UABS_G0_NC	.rodata+0x200
  5c:	f2a00008 	movk	x8, #0x0, lsl #16
			5c: R_AARCH64_MOVW_UABS_G1_NC	.rodata+0x200
  60:	f2c00008 	movk	x8, #0x0, lsl #32
			60: R_AARCH64_MOVW_UABS_G2_NC	.rodata+0x200
  64:	f2e00008 	movk	x8, #0x0, lsl #48
			64: R_AARCH64_MOVW_UABS_G3	.rodata+0x200
  68:	f9000268 	str	x8, [x19]
  6c:	52800020 	mov	w0, #0x1                   	// #1
  70:	a9434ff4 	ldp	x20, x19, [sp, #48]
  74:	a94257fe 	ldp	x30, x21, [sp, #32]
  78:	910103ff 	add	sp, sp, #0x40
  7c:	d65f03c0 	ret
  80:	f9400ff5 	ldr	x21, [sp, #24]
  84:	a900ffff 	stp	xzr, xzr, [sp, #8]
  88:	910023e1 	add	x1, sp, #0x8
  8c:	aa1503e0 	mov	x0, x21
  90:	94000000 	bl	0 <numba_list_set_method_table>
			90: R_AARCH64_CALL26	numba_list_set_method_table
  94:	90000001 	adrp	x1, 31c <_numba_list_dtor>
			94: R_AARCH64_ADR_GOT_PAGE	_numba_list_dtor
  98:	f9400021 	ldr	x1, [x1]
			98: R_AARCH64_LD64_GOT_LO12_NC	_numba_list_dtor
  9c:	52800100 	mov	w0, #0x8                   	// #8
  a0:	94000000 	bl	0 <NRT_MemInfo_alloc_dtor>
			a0: R_AARCH64_CALL26	NRT_MemInfo_alloc_dtor
  a4:	b4000140 	cbz	x0, cc <_ZN5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x+0xcc>
  a8:	aa0003e8 	mov	x8, x0
  ac:	2a1f03e0 	mov	w0, wzr
  b0:	f9400d09 	ldr	x9, [x8, #24]
  b4:	f9000135 	str	x21, [x9]
  b8:	f9000288 	str	x8, [x20]
  bc:	a9434ff4 	ldp	x20, x19, [sp, #48]
  c0:	a94257fe 	ldp	x30, x21, [sp, #32]
  c4:	910103ff 	add	sp, sp, #0x40
  c8:	d65f03c0 	ret
  cc:	d2800008 	mov	x8, #0x0                   	// #0
			cc: R_AARCH64_MOVW_UABS_G0_NC	.rodata+0x330
  d0:	f2a00008 	movk	x8, #0x0, lsl #16
			d0: R_AARCH64_MOVW_UABS_G1_NC	.rodata+0x330
  d4:	f2c00008 	movk	x8, #0x0, lsl #32
			d4: R_AARCH64_MOVW_UABS_G2_NC	.rodata+0x330
  d8:	f2e00008 	movk	x8, #0x0, lsl #48
			d8: R_AARCH64_MOVW_UABS_G3	.rodata+0x330
  dc:	f9000268 	str	x8, [x19]
  e0:	52800020 	mov	w0, #0x1                   	// #1
  e4:	a9434ff4 	ldp	x20, x19, [sp, #48]
  e8:	a94257fe 	ldp	x30, x21, [sp, #32]
  ec:	910103ff 	add	sp, sp, #0x40
  f0:	d65f03c0 	ret

00000000000000f4 <_ZN7cpython5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x>:
  f4:	d10103ff 	sub	sp, sp, #0x40
  f8:	f90013fe 	str	x30, [sp, #32]
  fc:	a9034ff4 	stp	x20, x19, [sp, #48]
 100:	aa0103e0 	mov	x0, x1
 104:	d2800001 	mov	x1, #0x0                   	// #0
			104: R_AARCH64_MOVW_UABS_G0_NC	.rodata
 108:	9100a3e4 	add	x4, sp, #0x28
 10c:	910063e5 	add	x5, sp, #0x18
 110:	f2a00001 	movk	x1, #0x0, lsl #16
			110: R_AARCH64_MOVW_UABS_G1_NC	.rodata
 114:	f2c00001 	movk	x1, #0x0, lsl #32
			114: R_AARCH64_MOVW_UABS_G2_NC	.rodata
 118:	f2e00001 	movk	x1, #0x0, lsl #48
			118: R_AARCH64_MOVW_UABS_G3	.rodata
 11c:	52800042 	mov	w2, #0x2                   	// #2
 120:	52800043 	mov	w3, #0x2                   	// #2
 124:	94000000 	bl	0 <PyArg_UnpackTuple>
			124: R_AARCH64_CALL26	PyArg_UnpackTuple
 128:	f90007ff 	str	xzr, [sp, #8]
 12c:	340004e0 	cbz	w0, 1c8 <_ZN7cpython5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x+0xd4>
 130:	90000008 	adrp	x8, 8 <_ZN5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x+0x8>
			130: R_AARCH64_ADR_GOT_PAGE	_ZN08NumbaEnv5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x
 134:	f9400108 	ldr	x8, [x8]
			134: R_AARCH64_LD64_GOT_LO12_NC	_ZN08NumbaEnv5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x
 138:	f9400108 	ldr	x8, [x8]
 13c:	b4000688 	cbz	x8, 20c <_ZN7cpython5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x+0x118>
 140:	f9400fe0 	ldr	x0, [sp, #24]
 144:	94000000 	bl	0 <PyNumber_Long>
			144: R_AARCH64_CALL26	PyNumber_Long
 148:	b40007a0 	cbz	x0, 23c <_ZN7cpython5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x+0x148>
 14c:	aa0003f4 	mov	x20, x0
 150:	94000000 	bl	0 <PyLong_AsLongLong>
			150: R_AARCH64_CALL26	PyLong_AsLongLong
 154:	aa0003f3 	mov	x19, x0
 158:	aa1403e0 	mov	x0, x20
 15c:	94000000 	bl	0 <Py_DecRef>
			15c: R_AARCH64_CALL26	Py_DecRef
 160:	94000000 	bl	0 <PyErr_Occurred>
			160: R_AARCH64_CALL26	PyErr_Occurred
 164:	b5000320 	cbnz	x0, 1c8 <_ZN7cpython5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x+0xd4>
 168:	f9000bff 	str	xzr, [sp, #16]
 16c:	910043e0 	add	x0, sp, #0x10
 170:	910023e1 	add	x1, sp, #0x8
 174:	aa1303e3 	mov	x3, x19
 178:	94000000 	bl	0 <_ZN5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x>
			178: R_AARCH64_CALL26	_ZN5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x
 17c:	3100081f 	cmn	w0, #0x2
 180:	54000040 	b.eq	188 <_ZN7cpython5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x+0x94>  // b.none
 184:	350000e0 	cbnz	w0, 1a0 <_ZN7cpython5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x+0xac>
 188:	f9400be0 	ldr	x0, [sp, #16]
 18c:	94000000 	bl	0 <NRT_meminfo_as_pyobject>
			18c: R_AARCH64_CALL26	NRT_meminfo_as_pyobject
 190:	a9434ff4 	ldp	x20, x19, [sp, #48]
 194:	f94013fe 	ldr	x30, [sp, #32]
 198:	910103ff 	add	sp, sp, #0x40
 19c:	d65f03c0 	ret
 1a0:	7100001f 	cmp	w0, #0x0
 1a4:	540001cd 	b.le	1dc <_ZN7cpython5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x+0xe8>
 1a8:	f94007f3 	ldr	x19, [sp, #8]
 1ac:	94000000 	bl	0 <PyErr_Clear>
			1ac: R_AARCH64_CALL26	PyErr_Clear
 1b0:	f9400a62 	ldr	x2, [x19, #16]
 1b4:	b9400a61 	ldr	w1, [x19, #8]
 1b8:	f9400260 	ldr	x0, [x19]
 1bc:	94000000 	bl	0 <numba_unpickle>
			1bc: R_AARCH64_CALL26	numba_unpickle
 1c0:	b4fffe80 	cbz	x0, 190 <_ZN7cpython5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x+0x9c>
 1c4:	94000000 	bl	0 <numba_do_raise>
			1c4: R_AARCH64_CALL26	numba_do_raise
 1c8:	aa1f03e0 	mov	x0, xzr
 1cc:	a9434ff4 	ldp	x20, x19, [sp, #48]
 1d0:	f94013fe 	ldr	x30, [sp, #32]
 1d4:	910103ff 	add	sp, sp, #0x40
 1d8:	d65f03c0 	ret
 1dc:	d2800001 	mov	x1, #0x0                   	// #0
			1dc: R_AARCH64_MOVW_UABS_G0_NC	.rodata+0xa0
 1e0:	f2a00001 	movk	x1, #0x0, lsl #16
			1e0: R_AARCH64_MOVW_UABS_G1_NC	.rodata+0xa0
 1e4:	f2c00001 	movk	x1, #0x0, lsl #32
			1e4: R_AARCH64_MOVW_UABS_G2_NC	.rodata+0xa0
 1e8:	f2e00001 	movk	x1, #0x0, lsl #48
			1e8: R_AARCH64_MOVW_UABS_G3	.rodata+0xa0
 1ec:	90000000 	adrp	x0, 0 <PyExc_SystemError>
			1ec: R_AARCH64_ADR_GOT_PAGE	PyExc_SystemError
 1f0:	f9400000 	ldr	x0, [x0]
			1f0: R_AARCH64_LD64_GOT_LO12_NC	PyExc_SystemError
 1f4:	94000000 	bl	0 <PyErr_SetString>
			1f4: R_AARCH64_CALL26	PyErr_SetString
 1f8:	aa1f03e0 	mov	x0, xzr
 1fc:	a9434ff4 	ldp	x20, x19, [sp, #48]
 200:	f94013fe 	ldr	x30, [sp, #32]
 204:	910103ff 	add	sp, sp, #0x40
 208:	d65f03c0 	ret
 20c:	d2800001 	mov	x1, #0x0                   	// #0
			20c: R_AARCH64_MOVW_UABS_G0_NC	.rodata+0x10
 210:	f2a00001 	movk	x1, #0x0, lsl #16
			210: R_AARCH64_MOVW_UABS_G1_NC	.rodata+0x10
 214:	f2c00001 	movk	x1, #0x0, lsl #32
			214: R_AARCH64_MOVW_UABS_G2_NC	.rodata+0x10
 218:	f2e00001 	movk	x1, #0x0, lsl #48
			218: R_AARCH64_MOVW_UABS_G3	.rodata+0x10
 21c:	90000000 	adrp	x0, 0 <PyExc_RuntimeError>
			21c: R_AARCH64_ADR_GOT_PAGE	PyExc_RuntimeError
 220:	f9400000 	ldr	x0, [x0]
			220: R_AARCH64_LD64_GOT_LO12_NC	PyExc_RuntimeError
 224:	94000000 	bl	0 <PyErr_SetString>
			224: R_AARCH64_CALL26	PyErr_SetString
 228:	aa1f03e0 	mov	x0, xzr
 22c:	a9434ff4 	ldp	x20, x19, [sp, #48]
 230:	f94013fe 	ldr	x30, [sp, #32]
 234:	910103ff 	add	sp, sp, #0x40
 238:	d65f03c0 	ret
 23c:	aa1f03f3 	mov	x19, xzr
 240:	94000000 	bl	0 <PyErr_Occurred>
			240: R_AARCH64_CALL26	PyErr_Occurred
 244:	b4fff920 	cbz	x0, 168 <_ZN7cpython5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x+0x74>
 248:	17ffffe0 	b	1c8 <_ZN7cpython5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x+0xd4>

000000000000024c <cfunc._ZN5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x>:
 24c:	d10103ff 	sub	sp, sp, #0x40
 250:	a90257fe 	stp	x30, x21, [sp, #32]
 254:	a9034ff4 	stp	x20, x19, [sp, #48]
 258:	aa0103e3 	mov	x3, x1
 25c:	a9017fff 	stp	xzr, xzr, [sp, #16]
 260:	910063e0 	add	x0, sp, #0x18
 264:	910043e1 	add	x1, sp, #0x10
 268:	94000000 	bl	0 <_ZN5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x>
			268: R_AARCH64_CALL26	_ZN5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x
 26c:	a9414ff5 	ldp	x21, x19, [sp, #16]
 270:	b9000fff 	str	wzr, [sp, #12]
 274:	350000c0 	cbnz	w0, 28c <cfunc._ZN5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x+0x40>
 278:	aa1303e0 	mov	x0, x19
 27c:	a9434ff4 	ldp	x20, x19, [sp, #48]
 280:	a94257fe 	ldp	x30, x21, [sp, #32]
 284:	910103ff 	add	sp, sp, #0x40
 288:	d65f03c0 	ret
 28c:	2a0003f4 	mov	w20, w0
 290:	910033e0 	add	x0, sp, #0xc
 294:	94000000 	bl	0 <numba_gil_ensure>
			294: R_AARCH64_CALL26	numba_gil_ensure
 298:	7100029f 	cmp	w20, #0x0
 29c:	5400012d 	b.le	2c0 <cfunc._ZN5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x+0x74>
 2a0:	94000000 	bl	0 <PyErr_Clear>
			2a0: R_AARCH64_CALL26	PyErr_Clear
 2a4:	f9400aa2 	ldr	x2, [x21, #16]
 2a8:	b9400aa1 	ldr	w1, [x21, #8]
 2ac:	f94002a0 	ldr	x0, [x21]
 2b0:	94000000 	bl	0 <numba_unpickle>
			2b0: R_AARCH64_CALL26	numba_unpickle
 2b4:	b4000140 	cbz	x0, 2dc <cfunc._ZN5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x+0x90>
 2b8:	94000000 	bl	0 <numba_do_raise>
			2b8: R_AARCH64_CALL26	numba_do_raise
 2bc:	14000008 	b	2dc <cfunc._ZN5numba5typed9typedlist10_make_listB2v1B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE16class_28int64_29x+0x90>
 2c0:	d2800001 	mov	x1, #0x0                   	// #0
			2c0: R_AARCH64_MOVW_UABS_G0_NC	.rodata+0xd0
 2c4:	f2a00001 	movk	x1, #0x0, lsl #16
			2c4: R_AARCH64_MOVW_UABS_G1_NC	.rodata+0xd0
 2c8:	f2c00001 	movk	x1, #0x0, lsl #32
			2c8: R_AARCH64_MOVW_UABS_G2_NC	.rodata+0xd0
 2cc:	f2e00001 	movk	x1, #0x0, lsl #48
			2cc: R_AARCH64_MOVW_UABS_G3	.rodata+0xd0
 2d0:	90000000 	adrp	x0, 0 <PyExc_SystemError>
			2d0: R_AARCH64_ADR_GOT_PAGE	PyExc_SystemError
 2d4:	f9400000 	ldr	x0, [x0]
			2d4: R_AARCH64_LD64_GOT_LO12_NC	PyExc_SystemError
 2d8:	94000000 	bl	0 <PyErr_SetString>
			2d8: R_AARCH64_CALL26	PyErr_SetString
 2dc:	d2800000 	mov	x0, #0x0                   	// #0
			2dc: R_AARCH64_MOVW_UABS_G0_NC	.rodata+0x100
 2e0:	f2a00000 	movk	x0, #0x0, lsl #16
			2e0: R_AARCH64_MOVW_UABS_G1_NC	.rodata+0x100
 2e4:	f2c00000 	movk	x0, #0x0, lsl #32
			2e4: R_AARCH64_MOVW_UABS_G2_NC	.rodata+0x100
 2e8:	f2e00000 	movk	x0, #0x0, lsl #48
			2e8: R_AARCH64_MOVW_UABS_G3	.rodata+0x100
 2ec:	94000000 	bl	0 <PyUnicode_FromString>
			2ec: R_AARCH64_CALL26	PyUnicode_FromString
 2f0:	aa0003f4 	mov	x20, x0
 2f4:	94000000 	bl	0 <PyErr_WriteUnraisable>
			2f4: R_AARCH64_CALL26	PyErr_WriteUnraisable
 2f8:	aa1403e0 	mov	x0, x20
 2fc:	94000000 	bl	0 <Py_DecRef>
			2fc: R_AARCH64_CALL26	Py_DecRef
 300:	910033e0 	add	x0, sp, #0xc
 304:	94000000 	bl	0 <numba_gil_release>
			304: R_AARCH64_CALL26	numba_gil_release
 308:	aa1303e0 	mov	x0, x19
 30c:	a9434ff4 	ldp	x20, x19, [sp, #48]
 310:	a94257fe 	ldp	x30, x21, [sp, #32]
 314:	910103ff 	add	sp, sp, #0x40
 318:	d65f03c0 	ret

000000000000031c <_numba_list_dtor>:
 31c:	f9400000 	ldr	x0, [x0]
 320:	14000000 	b	0 <numba_list_free>
			320: R_AARCH64_JUMP26	numba_list_free

obj5.elf:     file format elf64-littleaarch64


Disassembly of section .text:

0000000000000000 <_ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx>:
   0:	d10103ff 	sub	sp, sp, #0x40
   4:	a90257fe 	stp	x30, x21, [sp, #32]
   8:	a9034ff4 	stp	x20, x19, [sp, #48]
   c:	aa0103f3 	mov	x19, x1
  10:	b7f80243 	tbnz	x3, #63, 58 <_ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx+0x58>
  14:	aa0003f4 	mov	x20, x0
  18:	f9000fff 	str	xzr, [sp, #24]
  1c:	910063e0 	add	x0, sp, #0x18
  20:	52800201 	mov	w1, #0x10                  	// #16
  24:	aa0303e2 	mov	x2, x3
  28:	94000000 	bl	0 <numba_list_new>
			28: R_AARCH64_CALL26	numba_list_new
  2c:	340002a0 	cbz	w0, 80 <_ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx+0x80>
  30:	d2800008 	mov	x8, #0x0                   	// #0
			30: R_AARCH64_MOVW_UABS_G0_NC	.rodata+0x150
  34:	f2a00008 	movk	x8, #0x0, lsl #16
			34: R_AARCH64_MOVW_UABS_G1_NC	.rodata+0x150
  38:	f2c00008 	movk	x8, #0x0, lsl #32
			38: R_AARCH64_MOVW_UABS_G2_NC	.rodata+0x150
  3c:	f2e00008 	movk	x8, #0x0, lsl #48
			3c: R_AARCH64_MOVW_UABS_G3	.rodata+0x150
  40:	f9000268 	str	x8, [x19]
  44:	52800020 	mov	w0, #0x1                   	// #1
  48:	a9434ff4 	ldp	x20, x19, [sp, #48]
  4c:	a94257fe 	ldp	x30, x21, [sp, #32]
  50:	910103ff 	add	sp, sp, #0x40
  54:	d65f03c0 	ret
  58:	d2800008 	mov	x8, #0x0                   	// #0
			58: R_AARCH64_MOVW_UABS_G0_NC	.rodata+0xc0
  5c:	f2a00008 	movk	x8, #0x0, lsl #16
			5c: R_AARCH64_MOVW_UABS_G1_NC	.rodata+0xc0
  60:	f2c00008 	movk	x8, #0x0, lsl #32
			60: R_AARCH64_MOVW_UABS_G2_NC	.rodata+0xc0
  64:	f2e00008 	movk	x8, #0x0, lsl #48
			64: R_AARCH64_MOVW_UABS_G3	.rodata+0xc0
  68:	f9000268 	str	x8, [x19]
  6c:	52800020 	mov	w0, #0x1                   	// #1
  70:	a9434ff4 	ldp	x20, x19, [sp, #48]
  74:	a94257fe 	ldp	x30, x21, [sp, #32]
  78:	910103ff 	add	sp, sp, #0x40
  7c:	d65f03c0 	ret
  80:	f9400ff5 	ldr	x21, [sp, #24]
  84:	90000008 	adrp	x8, 104 <.numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_incref>
			84: R_AARCH64_ADR_GOT_PAGE	.numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_incref
  88:	f9400108 	ldr	x8, [x8]
			88: R_AARCH64_LD64_GOT_LO12_NC	.numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_incref
  8c:	90000009 	adrp	x9, 10c <.numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_decref>
			8c: R_AARCH64_ADR_GOT_PAGE	.numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_decref
  90:	f9400129 	ldr	x9, [x9]
			90: R_AARCH64_LD64_GOT_LO12_NC	.numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_decref
  94:	a900a7e8 	stp	x8, x9, [sp, #8]
  98:	910023e1 	add	x1, sp, #0x8
  9c:	aa1503e0 	mov	x0, x21
  a0:	94000000 	bl	0 <numba_list_set_method_table>
			a0: R_AARCH64_CALL26	numba_list_set_method_table
  a4:	90000001 	adrp	x1, 114 <_numba_list_dtor>
			a4: R_AARCH64_ADR_GOT_PAGE	_numba_list_dtor
  a8:	f9400021 	ldr	x1, [x1]
			a8: R_AARCH64_LD64_GOT_LO12_NC	_numba_list_dtor
  ac:	52800100 	mov	w0, #0x8                   	// #8
  b0:	94000000 	bl	0 <NRT_MemInfo_alloc_dtor>
			b0: R_AARCH64_CALL26	NRT_MemInfo_alloc_dtor
  b4:	b4000140 	cbz	x0, dc <_ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx+0xdc>
  b8:	aa0003e8 	mov	x8, x0
  bc:	2a1f03e0 	mov	w0, wzr
  c0:	f9400d09 	ldr	x9, [x8, #24]
  c4:	f9000135 	str	x21, [x9]
  c8:	a9005688 	stp	x8, x21, [x20]
  cc:	a9434ff4 	ldp	x20, x19, [sp, #48]
  d0:	a94257fe 	ldp	x30, x21, [sp, #32]
  d4:	910103ff 	add	sp, sp, #0x40
  d8:	d65f03c0 	ret
  dc:	d2800008 	mov	x8, #0x0                   	// #0
			dc: R_AARCH64_MOVW_UABS_G0_NC	.rodata+0x1f0
  e0:	f2a00008 	movk	x8, #0x0, lsl #16
			e0: R_AARCH64_MOVW_UABS_G1_NC	.rodata+0x1f0
  e4:	f2c00008 	movk	x8, #0x0, lsl #32
			e4: R_AARCH64_MOVW_UABS_G2_NC	.rodata+0x1f0
  e8:	f2e00008 	movk	x8, #0x0, lsl #48
			e8: R_AARCH64_MOVW_UABS_G3	.rodata+0x1f0
  ec:	f9000268 	str	x8, [x19]
  f0:	52800020 	mov	w0, #0x1                   	// #1
  f4:	a9434ff4 	ldp	x20, x19, [sp, #48]
  f8:	a94257fe 	ldp	x30, x21, [sp, #32]
  fc:	910103ff 	add	sp, sp, #0x40
 100:	d65f03c0 	ret

0000000000000104 <.numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_incref>:
 104:	f9400000 	ldr	x0, [x0]
 108:	14000000 	b	1f0 <NRT_incref>
			108: R_AARCH64_JUMP26	NRT_incref

000000000000010c <.numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_decref>:
 10c:	f9400000 	ldr	x0, [x0]
 110:	14000000 	b	200 <NRT_decref>
			110: R_AARCH64_JUMP26	NRT_decref

0000000000000114 <_numba_list_dtor>:
 114:	f9400000 	ldr	x0, [x0]
 118:	14000000 	b	0 <numba_list_free>
			118: R_AARCH64_JUMP26	numba_list_free

000000000000011c <cfunc._ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx>:
 11c:	d10143ff 	sub	sp, sp, #0x50
 120:	a901fbff 	stp	xzr, x30, [sp, #24]
 124:	a90357f6 	stp	x22, x21, [sp, #48]
 128:	a9044ff4 	stp	x20, x19, [sp, #64]
 12c:	aa0103e3 	mov	x3, x1
 130:	f9000bff 	str	xzr, [sp, #16]
 134:	f90017ff 	str	xzr, [sp, #40]
 138:	910043e0 	add	x0, sp, #0x10
 13c:	9100a3e1 	add	x1, sp, #0x28
 140:	94000000 	bl	0 <_ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx>
			140: R_AARCH64_CALL26	_ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx
 144:	f94017f6 	ldr	x22, [sp, #40]
 148:	a94153f3 	ldp	x19, x20, [sp, #16]
 14c:	b9000fff 	str	wzr, [sp, #12]
 150:	35000100 	cbnz	w0, 170 <cfunc._ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx+0x54>
 154:	aa1303e0 	mov	x0, x19
 158:	aa1403e1 	mov	x1, x20
 15c:	a9444ff4 	ldp	x20, x19, [sp, #64]
 160:	a94357f6 	ldp	x22, x21, [sp, #48]
 164:	f94013fe 	ldr	x30, [sp, #32]
 168:	910143ff 	add	sp, sp, #0x50
 16c:	d65f03c0 	ret
 170:	2a0003f5 	mov	w21, w0
 174:	910033e0 	add	x0, sp, #0xc
 178:	94000000 	bl	0 <numba_gil_ensure>
			178: R_AARCH64_CALL26	numba_gil_ensure
 17c:	710002bf 	cmp	w21, #0x0
 180:	5400012d 	b.le	1a4 <cfunc._ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx+0x88>
 184:	94000000 	bl	0 <PyErr_Clear>
			184: R_AARCH64_CALL26	PyErr_Clear
 188:	f9400ac2 	ldr	x2, [x22, #16]
 18c:	b9400ac1 	ldr	w1, [x22, #8]
 190:	f94002c0 	ldr	x0, [x22]
 194:	94000000 	bl	0 <numba_unpickle>
			194: R_AARCH64_CALL26	numba_unpickle
 198:	b4000140 	cbz	x0, 1c0 <cfunc._ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx+0xa4>
 19c:	94000000 	bl	0 <numba_do_raise>
			19c: R_AARCH64_CALL26	numba_do_raise
 1a0:	14000008 	b	1c0 <cfunc._ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx+0xa4>
 1a4:	d2800001 	mov	x1, #0x0                   	// #0
			1a4: R_AARCH64_MOVW_UABS_G0_NC	.rodata+0x210
 1a8:	f2a00001 	movk	x1, #0x0, lsl #16
			1a8: R_AARCH64_MOVW_UABS_G1_NC	.rodata+0x210
 1ac:	f2c00001 	movk	x1, #0x0, lsl #32
			1ac: R_AARCH64_MOVW_UABS_G2_NC	.rodata+0x210
 1b0:	f2e00001 	movk	x1, #0x0, lsl #48
			1b0: R_AARCH64_MOVW_UABS_G3	.rodata+0x210
 1b4:	90000000 	adrp	x0, 0 <PyExc_SystemError>
			1b4: R_AARCH64_ADR_GOT_PAGE	PyExc_SystemError
 1b8:	f9400000 	ldr	x0, [x0]
			1b8: R_AARCH64_LD64_GOT_LO12_NC	PyExc_SystemError
 1bc:	94000000 	bl	0 <PyErr_SetString>
			1bc: R_AARCH64_CALL26	PyErr_SetString
 1c0:	d2800000 	mov	x0, #0x0                   	// #0
			1c0: R_AARCH64_MOVW_UABS_G0_NC	.rodata+0x240
 1c4:	f2a00000 	movk	x0, #0x0, lsl #16
			1c4: R_AARCH64_MOVW_UABS_G1_NC	.rodata+0x240
 1c8:	f2c00000 	movk	x0, #0x0, lsl #32
			1c8: R_AARCH64_MOVW_UABS_G2_NC	.rodata+0x240
 1cc:	f2e00000 	movk	x0, #0x0, lsl #48
			1cc: R_AARCH64_MOVW_UABS_G3	.rodata+0x240
 1d0:	94000000 	bl	0 <PyUnicode_FromString>
			1d0: R_AARCH64_CALL26	PyUnicode_FromString
 1d4:	aa0003f5 	mov	x21, x0
 1d8:	94000000 	bl	0 <PyErr_WriteUnraisable>
			1d8: R_AARCH64_CALL26	PyErr_WriteUnraisable
 1dc:	aa1503e0 	mov	x0, x21
 1e0:	94000000 	bl	0 <Py_DecRef>
			1e0: R_AARCH64_CALL26	Py_DecRef
 1e4:	910033e0 	add	x0, sp, #0xc
 1e8:	94000000 	bl	0 <numba_gil_release>
			1e8: R_AARCH64_CALL26	numba_gil_release
 1ec:	17ffffda 	b	154 <cfunc._ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx+0x38>

00000000000001f0 <NRT_incref>:
 1f0:	b4000060 	cbz	x0, 1fc <NRT_incref+0xc>
 1f4:	52800028 	mov	w8, #0x1                   	// #1
 1f8:	f8280008 	ldadd	x8, x8, [x0]
 1fc:	d65f03c0 	ret

0000000000000200 <NRT_decref>:
 200:	b40000c0 	cbz	x0, 218 <NRT_decref+0x18>
 204:	d5033bbf 	dmb	ish
 208:	92800008 	mov	x8, #0xffffffffffffffff    	// #-1
 20c:	f8280008 	ldadd	x8, x8, [x0]
 210:	f100051f 	cmp	x8, #0x1
 214:	54000040 	b.eq	21c <NRT_decref+0x1c>  // b.none
 218:	d65f03c0 	ret
 21c:	d50339bf 	dmb	ishld
 220:	14000000 	b	0 <NRT_MemInfo_call_dtor>
			220: R_AARCH64_JUMP26	NRT_MemInfo_call_dtor

obj6.elf:     file format elf64-littleaarch64


Disassembly of section .text:

0000000000000000 <_ZN5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx>:
   0:	d10103ff 	sub	sp, sp, #0x40
   4:	a90257fe 	stp	x30, x21, [sp, #32]
   8:	a9034ff4 	stp	x20, x19, [sp, #48]
   c:	aa0103f3 	mov	x19, x1
  10:	b7f80243 	tbnz	x3, #63, 58 <_ZN5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx+0x58>
  14:	aa0003f4 	mov	x20, x0
  18:	f9000fff 	str	xzr, [sp, #24]
  1c:	910063e0 	add	x0, sp, #0x18
  20:	52800201 	mov	w1, #0x10                  	// #16
  24:	aa0303e2 	mov	x2, x3
  28:	94000000 	bl	0 <numba_list_new>
			28: R_AARCH64_CALL26	numba_list_new
  2c:	340002a0 	cbz	w0, 80 <_ZN5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx+0x80>
  30:	d2800008 	mov	x8, #0x0                   	// #0
			30: R_AARCH64_MOVW_UABS_G0_NC	.rodata+0x2a0
  34:	f2a00008 	movk	x8, #0x0, lsl #16
			34: R_AARCH64_MOVW_UABS_G1_NC	.rodata+0x2a0
  38:	f2c00008 	movk	x8, #0x0, lsl #32
			38: R_AARCH64_MOVW_UABS_G2_NC	.rodata+0x2a0
  3c:	f2e00008 	movk	x8, #0x0, lsl #48
			3c: R_AARCH64_MOVW_UABS_G3	.rodata+0x2a0
  40:	f9000268 	str	x8, [x19]
  44:	52800020 	mov	w0, #0x1                   	// #1
  48:	a9434ff4 	ldp	x20, x19, [sp, #48]
  4c:	a94257fe 	ldp	x30, x21, [sp, #32]
  50:	910103ff 	add	sp, sp, #0x40
  54:	d65f03c0 	ret
  58:	d2800008 	mov	x8, #0x0                   	// #0
			58: R_AARCH64_MOVW_UABS_G0_NC	.rodata+0x210
  5c:	f2a00008 	movk	x8, #0x0, lsl #16
			5c: R_AARCH64_MOVW_UABS_G1_NC	.rodata+0x210
  60:	f2c00008 	movk	x8, #0x0, lsl #32
			60: R_AARCH64_MOVW_UABS_G2_NC	.rodata+0x210
  64:	f2e00008 	movk	x8, #0x0, lsl #48
			64: R_AARCH64_MOVW_UABS_G3	.rodata+0x210
  68:	f9000268 	str	x8, [x19]
  6c:	52800020 	mov	w0, #0x1                   	// #1
  70:	a9434ff4 	ldp	x20, x19, [sp, #48]
  74:	a94257fe 	ldp	x30, x21, [sp, #32]
  78:	910103ff 	add	sp, sp, #0x40
  7c:	d65f03c0 	ret
  80:	f9400ff5 	ldr	x21, [sp, #24]
  84:	90000008 	adrp	x8, 32c <.numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_incref>
			84: R_AARCH64_ADR_GOT_PAGE	.numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_incref
  88:	f9400108 	ldr	x8, [x8]
			88: R_AARCH64_LD64_GOT_LO12_NC	.numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_incref
  8c:	90000009 	adrp	x9, 334 <.numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_decref>
			8c: R_AARCH64_ADR_GOT_PAGE	.numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_decref
  90:	f9400129 	ldr	x9, [x9]
			90: R_AARCH64_LD64_GOT_LO12_NC	.numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_decref
  94:	a900a7e8 	stp	x8, x9, [sp, #8]
  98:	910023e1 	add	x1, sp, #0x8
  9c:	aa1503e0 	mov	x0, x21
  a0:	94000000 	bl	0 <numba_list_set_method_table>
			a0: R_AARCH64_CALL26	numba_list_set_method_table
  a4:	90000001 	adrp	x1, 33c <_numba_list_dtor>
			a4: R_AARCH64_ADR_GOT_PAGE	_numba_list_dtor
  a8:	f9400021 	ldr	x1, [x1]
			a8: R_AARCH64_LD64_GOT_LO12_NC	_numba_list_dtor
  ac:	52800100 	mov	w0, #0x8                   	// #8
  b0:	94000000 	bl	0 <NRT_MemInfo_alloc_dtor>
			b0: R_AARCH64_CALL26	NRT_MemInfo_alloc_dtor
  b4:	b4000140 	cbz	x0, dc <_ZN5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx+0xdc>
  b8:	aa0003e8 	mov	x8, x0
  bc:	2a1f03e0 	mov	w0, wzr
  c0:	f9400d09 	ldr	x9, [x8, #24]
  c4:	f9000135 	str	x21, [x9]
  c8:	f9000288 	str	x8, [x20]
  cc:	a9434ff4 	ldp	x20, x19, [sp, #48]
  d0:	a94257fe 	ldp	x30, x21, [sp, #32]
  d4:	910103ff 	add	sp, sp, #0x40
  d8:	d65f03c0 	ret
  dc:	d2800008 	mov	x8, #0x0                   	// #0
			dc: R_AARCH64_MOVW_UABS_G0_NC	.rodata+0x340
  e0:	f2a00008 	movk	x8, #0x0, lsl #16
			e0: R_AARCH64_MOVW_UABS_G1_NC	.rodata+0x340
  e4:	f2c00008 	movk	x8, #0x0, lsl #32
			e4: R_AARCH64_MOVW_UABS_G2_NC	.rodata+0x340
  e8:	f2e00008 	movk	x8, #0x0, lsl #48
			e8: R_AARCH64_MOVW_UABS_G3	.rodata+0x340
  ec:	f9000268 	str	x8, [x19]
  f0:	52800020 	mov	w0, #0x1                   	// #1
  f4:	a9434ff4 	ldp	x20, x19, [sp, #48]
  f8:	a94257fe 	ldp	x30, x21, [sp, #32]
  fc:	910103ff 	add	sp, sp, #0x40
 100:	d65f03c0 	ret

0000000000000104 <_ZN7cpython5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx>:
 104:	d10103ff 	sub	sp, sp, #0x40
 108:	f90013fe 	str	x30, [sp, #32]
 10c:	a9034ff4 	stp	x20, x19, [sp, #48]
 110:	aa0103e0 	mov	x0, x1
 114:	d2800001 	mov	x1, #0x0                   	// #0
			114: R_AARCH64_MOVW_UABS_G0_NC	.rodata
 118:	9100a3e4 	add	x4, sp, #0x28
 11c:	910063e5 	add	x5, sp, #0x18
 120:	f2a00001 	movk	x1, #0x0, lsl #16
			120: R_AARCH64_MOVW_UABS_G1_NC	.rodata
 124:	f2c00001 	movk	x1, #0x0, lsl #32
			124: R_AARCH64_MOVW_UABS_G2_NC	.rodata
 128:	f2e00001 	movk	x1, #0x0, lsl #48
			128: R_AARCH64_MOVW_UABS_G3	.rodata
 12c:	52800042 	mov	w2, #0x2                   	// #2
 130:	52800043 	mov	w3, #0x2                   	// #2
 134:	94000000 	bl	0 <PyArg_UnpackTuple>
			134: R_AARCH64_CALL26	PyArg_UnpackTuple
 138:	f90007ff 	str	xzr, [sp, #8]
 13c:	340004e0 	cbz	w0, 1d8 <_ZN7cpython5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx+0xd4>
 140:	90000008 	adrp	x8, 8 <_ZN5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx+0x8>
			140: R_AARCH64_ADR_GOT_PAGE	_ZN08NumbaEnv5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx
 144:	f9400108 	ldr	x8, [x8]
			144: R_AARCH64_LD64_GOT_LO12_NC	_ZN08NumbaEnv5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx
 148:	f9400108 	ldr	x8, [x8]
 14c:	b4000688 	cbz	x8, 21c <_ZN7cpython5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx+0x118>
 150:	f9400fe0 	ldr	x0, [sp, #24]
 154:	94000000 	bl	0 <PyNumber_Long>
			154: R_AARCH64_CALL26	PyNumber_Long
 158:	b40007a0 	cbz	x0, 24c <_ZN7cpython5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx+0x148>
 15c:	aa0003f4 	mov	x20, x0
 160:	94000000 	bl	0 <PyLong_AsLongLong>
			160: R_AARCH64_CALL26	PyLong_AsLongLong
 164:	aa0003f3 	mov	x19, x0
 168:	aa1403e0 	mov	x0, x20
 16c:	94000000 	bl	0 <Py_DecRef>
			16c: R_AARCH64_CALL26	Py_DecRef
 170:	94000000 	bl	0 <PyErr_Occurred>
			170: R_AARCH64_CALL26	PyErr_Occurred
 174:	b5000320 	cbnz	x0, 1d8 <_ZN7cpython5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx+0xd4>
 178:	f9000bff 	str	xzr, [sp, #16]
 17c:	910043e0 	add	x0, sp, #0x10
 180:	910023e1 	add	x1, sp, #0x8
 184:	aa1303e3 	mov	x3, x19
 188:	94000000 	bl	0 <_ZN5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx>
			188: R_AARCH64_CALL26	_ZN5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx
 18c:	3100081f 	cmn	w0, #0x2
 190:	54000040 	b.eq	198 <_ZN7cpython5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx+0x94>  // b.none
 194:	350000e0 	cbnz	w0, 1b0 <_ZN7cpython5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx+0xac>
 198:	f9400be0 	ldr	x0, [sp, #16]
 19c:	94000000 	bl	0 <NRT_meminfo_as_pyobject>
			19c: R_AARCH64_CALL26	NRT_meminfo_as_pyobject
 1a0:	a9434ff4 	ldp	x20, x19, [sp, #48]
 1a4:	f94013fe 	ldr	x30, [sp, #32]
 1a8:	910103ff 	add	sp, sp, #0x40
 1ac:	d65f03c0 	ret
 1b0:	7100001f 	cmp	w0, #0x0
 1b4:	540001cd 	b.le	1ec <_ZN7cpython5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx+0xe8>
 1b8:	f94007f3 	ldr	x19, [sp, #8]
 1bc:	94000000 	bl	0 <PyErr_Clear>
			1bc: R_AARCH64_CALL26	PyErr_Clear
 1c0:	f9400a62 	ldr	x2, [x19, #16]
 1c4:	b9400a61 	ldr	w1, [x19, #8]
 1c8:	f9400260 	ldr	x0, [x19]
 1cc:	94000000 	bl	0 <numba_unpickle>
			1cc: R_AARCH64_CALL26	numba_unpickle
 1d0:	b4fffe80 	cbz	x0, 1a0 <_ZN7cpython5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx+0x9c>
 1d4:	94000000 	bl	0 <numba_do_raise>
			1d4: R_AARCH64_CALL26	numba_do_raise
 1d8:	aa1f03e0 	mov	x0, xzr
 1dc:	a9434ff4 	ldp	x20, x19, [sp, #48]
 1e0:	f94013fe 	ldr	x30, [sp, #32]
 1e4:	910103ff 	add	sp, sp, #0x40
 1e8:	d65f03c0 	ret
 1ec:	d2800001 	mov	x1, #0x0                   	// #0
			1ec: R_AARCH64_MOVW_UABS_G0_NC	.rodata+0xb0
 1f0:	f2a00001 	movk	x1, #0x0, lsl #16
			1f0: R_AARCH64_MOVW_UABS_G1_NC	.rodata+0xb0
 1f4:	f2c00001 	movk	x1, #0x0, lsl #32
			1f4: R_AARCH64_MOVW_UABS_G2_NC	.rodata+0xb0
 1f8:	f2e00001 	movk	x1, #0x0, lsl #48
			1f8: R_AARCH64_MOVW_UABS_G3	.rodata+0xb0
 1fc:	90000000 	adrp	x0, 0 <PyExc_SystemError>
			1fc: R_AARCH64_ADR_GOT_PAGE	PyExc_SystemError
 200:	f9400000 	ldr	x0, [x0]
			200: R_AARCH64_LD64_GOT_LO12_NC	PyExc_SystemError
 204:	94000000 	bl	0 <PyErr_SetString>
			204: R_AARCH64_CALL26	PyErr_SetString
 208:	aa1f03e0 	mov	x0, xzr
 20c:	a9434ff4 	ldp	x20, x19, [sp, #48]
 210:	f94013fe 	ldr	x30, [sp, #32]
 214:	910103ff 	add	sp, sp, #0x40
 218:	d65f03c0 	ret
 21c:	d2800001 	mov	x1, #0x0                   	// #0
			21c: R_AARCH64_MOVW_UABS_G0_NC	.rodata+0x10
 220:	f2a00001 	movk	x1, #0x0, lsl #16
			220: R_AARCH64_MOVW_UABS_G1_NC	.rodata+0x10
 224:	f2c00001 	movk	x1, #0x0, lsl #32
			224: R_AARCH64_MOVW_UABS_G2_NC	.rodata+0x10
 228:	f2e00001 	movk	x1, #0x0, lsl #48
			228: R_AARCH64_MOVW_UABS_G3	.rodata+0x10
 22c:	90000000 	adrp	x0, 0 <PyExc_RuntimeError>
			22c: R_AARCH64_ADR_GOT_PAGE	PyExc_RuntimeError
 230:	f9400000 	ldr	x0, [x0]
			230: R_AARCH64_LD64_GOT_LO12_NC	PyExc_RuntimeError
 234:	94000000 	bl	0 <PyErr_SetString>
			234: R_AARCH64_CALL26	PyErr_SetString
 238:	aa1f03e0 	mov	x0, xzr
 23c:	a9434ff4 	ldp	x20, x19, [sp, #48]
 240:	f94013fe 	ldr	x30, [sp, #32]
 244:	910103ff 	add	sp, sp, #0x40
 248:	d65f03c0 	ret
 24c:	aa1f03f3 	mov	x19, xzr
 250:	94000000 	bl	0 <PyErr_Occurred>
			250: R_AARCH64_CALL26	PyErr_Occurred
 254:	b4fff920 	cbz	x0, 178 <_ZN7cpython5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx+0x74>
 258:	17ffffe0 	b	1d8 <_ZN7cpython5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx+0xd4>

000000000000025c <cfunc._ZN5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx>:
 25c:	d10103ff 	sub	sp, sp, #0x40
 260:	a90257fe 	stp	x30, x21, [sp, #32]
 264:	a9034ff4 	stp	x20, x19, [sp, #48]
 268:	aa0103e3 	mov	x3, x1
 26c:	a9017fff 	stp	xzr, xzr, [sp, #16]
 270:	910063e0 	add	x0, sp, #0x18
 274:	910043e1 	add	x1, sp, #0x10
 278:	94000000 	bl	0 <_ZN5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx>
			278: R_AARCH64_CALL26	_ZN5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx
 27c:	a9414ff5 	ldp	x21, x19, [sp, #16]
 280:	b9000fff 	str	wzr, [sp, #12]
 284:	350000c0 	cbnz	w0, 29c <cfunc._ZN5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx+0x40>
 288:	aa1303e0 	mov	x0, x19
 28c:	a9434ff4 	ldp	x20, x19, [sp, #48]
 290:	a94257fe 	ldp	x30, x21, [sp, #32]
 294:	910103ff 	add	sp, sp, #0x40
 298:	d65f03c0 	ret
 29c:	2a0003f4 	mov	w20, w0
 2a0:	910033e0 	add	x0, sp, #0xc
 2a4:	94000000 	bl	0 <numba_gil_ensure>
			2a4: R_AARCH64_CALL26	numba_gil_ensure
 2a8:	7100029f 	cmp	w20, #0x0
 2ac:	5400012d 	b.le	2d0 <cfunc._ZN5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx+0x74>
 2b0:	94000000 	bl	0 <PyErr_Clear>
			2b0: R_AARCH64_CALL26	PyErr_Clear
 2b4:	f9400aa2 	ldr	x2, [x21, #16]
 2b8:	b9400aa1 	ldr	w1, [x21, #8]
 2bc:	f94002a0 	ldr	x0, [x21]
 2c0:	94000000 	bl	0 <numba_unpickle>
			2c0: R_AARCH64_CALL26	numba_unpickle
 2c4:	b4000140 	cbz	x0, 2ec <cfunc._ZN5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx+0x90>
 2c8:	94000000 	bl	0 <numba_do_raise>
			2c8: R_AARCH64_CALL26	numba_do_raise
 2cc:	14000008 	b	2ec <cfunc._ZN5numba5typed9typedlist10_make_listB2v3B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE32typeref_5bListType_5bint64_5d_5dx+0x90>
 2d0:	d2800001 	mov	x1, #0x0                   	// #0
			2d0: R_AARCH64_MOVW_UABS_G0_NC	.rodata+0xe0
 2d4:	f2a00001 	movk	x1, #0x0, lsl #16
			2d4: R_AARCH64_MOVW_UABS_G1_NC	.rodata+0xe0
 2d8:	f2c00001 	movk	x1, #0x0, lsl #32
			2d8: R_AARCH64_MOVW_UABS_G2_NC	.rodata+0xe0
 2dc:	f2e00001 	movk	x1, #0x0, lsl #48
			2dc: R_AARCH64_MOVW_UABS_G3	.rodata+0xe0
 2e0:	90000000 	adrp	x0, 0 <PyExc_SystemError>
			2e0: R_AARCH64_ADR_GOT_PAGE	PyExc_SystemError
 2e4:	f9400000 	ldr	x0, [x0]
			2e4: R_AARCH64_LD64_GOT_LO12_NC	PyExc_SystemError
 2e8:	94000000 	bl	0 <PyErr_SetString>
			2e8: R_AARCH64_CALL26	PyErr_SetString
 2ec:	d2800000 	mov	x0, #0x0                   	// #0
			2ec: R_AARCH64_MOVW_UABS_G0_NC	.rodata+0x110
 2f0:	f2a00000 	movk	x0, #0x0, lsl #16
			2f0: R_AARCH64_MOVW_UABS_G1_NC	.rodata+0x110
 2f4:	f2c00000 	movk	x0, #0x0, lsl #32
			2f4: R_AARCH64_MOVW_UABS_G2_NC	.rodata+0x110
 2f8:	f2e00000 	movk	x0, #0x0, lsl #48
			2f8: R_AARCH64_MOVW_UABS_G3	.rodata+0x110
 2fc:	94000000 	bl	0 <PyUnicode_FromString>
			2fc: R_AARCH64_CALL26	PyUnicode_FromString
 300:	aa0003f4 	mov	x20, x0
 304:	94000000 	bl	0 <PyErr_WriteUnraisable>
			304: R_AARCH64_CALL26	PyErr_WriteUnraisable
 308:	aa1403e0 	mov	x0, x20
 30c:	94000000 	bl	0 <Py_DecRef>
			30c: R_AARCH64_CALL26	Py_DecRef
 310:	910033e0 	add	x0, sp, #0xc
 314:	94000000 	bl	0 <numba_gil_release>
			314: R_AARCH64_CALL26	numba_gil_release
 318:	aa1303e0 	mov	x0, x19
 31c:	a9434ff4 	ldp	x20, x19, [sp, #48]
 320:	a94257fe 	ldp	x30, x21, [sp, #32]
 324:	910103ff 	add	sp, sp, #0x40
 328:	d65f03c0 	ret

000000000000032c <.numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_incref>:
 32c:	f9400000 	ldr	x0, [x0]
 330:	14000000 	b	368 <NRT_incref>
			330: R_AARCH64_JUMP26	NRT_incref

0000000000000334 <.numba__ZN5numba5typed10listobject13impl_new_list12_3clocals_3e3impB2v4B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE32typeref_5bListType_5bint64_5d_5dx.list_decref>:
 334:	f9400000 	ldr	x0, [x0]
 338:	14000000 	b	344 <NRT_decref>
			338: R_AARCH64_JUMP26	NRT_decref

000000000000033c <_numba_list_dtor>:
 33c:	f9400000 	ldr	x0, [x0]
 340:	14000000 	b	0 <numba_list_free>
			340: R_AARCH64_JUMP26	numba_list_free

0000000000000344 <NRT_decref>:
 344:	b40000c0 	cbz	x0, 35c <NRT_decref+0x18>
 348:	d5033bbf 	dmb	ish
 34c:	92800008 	mov	x8, #0xffffffffffffffff    	// #-1
 350:	f8280008 	ldadd	x8, x8, [x0]
 354:	f100051f 	cmp	x8, #0x1
 358:	54000040 	b.eq	360 <NRT_decref+0x1c>  // b.none
 35c:	d65f03c0 	ret
 360:	d50339bf 	dmb	ishld
 364:	14000000 	b	0 <NRT_MemInfo_call_dtor>
			364: R_AARCH64_JUMP26	NRT_MemInfo_call_dtor

0000000000000368 <NRT_incref>:
 368:	b4000060 	cbz	x0, 374 <NRT_incref+0xc>
 36c:	52800028 	mov	w8, #0x1                   	// #1
 370:	f8280008 	ldadd	x8, x8, [x0]
 374:	d65f03c0 	ret

obj7.elf:     file format elf64-littleaarch64


Disassembly of section .text:

0000000000000000 <_ZN5numba5typed10listobject11impl_append12_3clocals_3e4implB2v6B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d>:
   0:	d100c3ff 	sub	sp, sp, #0x30
   4:	a900fbe5 	stp	x5, x30, [sp, #8]
   8:	a9024ff4 	stp	x20, x19, [sp, #32]
   c:	aa0103f3 	mov	x19, x1
  10:	aa0003f4 	mov	x20, x0
  14:	f90003e4 	str	x4, [sp]
  18:	910003e1 	mov	x1, sp
  1c:	aa0303e0 	mov	x0, x3
  20:	94000000 	bl	0 <numba_list_append>
			20: R_AARCH64_CALL26	numba_list_append
  24:	3100141f 	cmn	w0, #0x5
  28:	54000120 	b.eq	4c <_ZN5numba5typed10listobject11impl_append12_3clocals_3e4implB2v6B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d+0x4c>  // b.none
  2c:	3100081f 	cmn	w0, #0x2
  30:	54000220 	b.eq	74 <_ZN5numba5typed10listobject11impl_append12_3clocals_3e4implB2v6B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d+0x74>  // b.none
  34:	35000340 	cbnz	w0, 9c <_ZN5numba5typed10listobject11impl_append12_3clocals_3e4implB2v6B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d+0x9c>
  38:	f900029f 	str	xzr, [x20]
  3c:	a9424ff4 	ldp	x20, x19, [sp, #32]
  40:	f9400bfe 	ldr	x30, [sp, #16]
  44:	9100c3ff 	add	sp, sp, #0x30
  48:	d65f03c0 	ret
  4c:	d2800008 	mov	x8, #0x0                   	// #0
			4c: R_AARCH64_MOVW_UABS_G0_NC	.rodata+0xb0
  50:	f2a00008 	movk	x8, #0x0, lsl #16
			50: R_AARCH64_MOVW_UABS_G1_NC	.rodata+0xb0
  54:	f2c00008 	movk	x8, #0x0, lsl #32
			54: R_AARCH64_MOVW_UABS_G2_NC	.rodata+0xb0
  58:	f2e00008 	movk	x8, #0x0, lsl #48
			58: R_AARCH64_MOVW_UABS_G3	.rodata+0xb0
  5c:	f9000268 	str	x8, [x19]
  60:	52800020 	mov	w0, #0x1                   	// #1
  64:	a9424ff4 	ldp	x20, x19, [sp, #32]
  68:	f9400bfe 	ldr	x30, [sp, #16]
  6c:	9100c3ff 	add	sp, sp, #0x30
  70:	d65f03c0 	ret
  74:	d2800008 	mov	x8, #0x0                   	// #0
			74: R_AARCH64_MOVW_UABS_G0_NC	.rodata+0x190
  78:	f2a00008 	movk	x8, #0x0, lsl #16
			78: R_AARCH64_MOVW_UABS_G1_NC	.rodata+0x190
  7c:	f2c00008 	movk	x8, #0x0, lsl #32
			7c: R_AARCH64_MOVW_UABS_G2_NC	.rodata+0x190
  80:	f2e00008 	movk	x8, #0x0, lsl #48
			80: R_AARCH64_MOVW_UABS_G3	.rodata+0x190
  84:	f9000268 	str	x8, [x19]
  88:	52800020 	mov	w0, #0x1                   	// #1
  8c:	a9424ff4 	ldp	x20, x19, [sp, #32]
  90:	f9400bfe 	ldr	x30, [sp, #16]
  94:	9100c3ff 	add	sp, sp, #0x30
  98:	d65f03c0 	ret
  9c:	d2800008 	mov	x8, #0x0                   	// #0
			9c: R_AARCH64_MOVW_UABS_G0_NC	.rodata+0x270
  a0:	f2a00008 	movk	x8, #0x0, lsl #16
			a0: R_AARCH64_MOVW_UABS_G1_NC	.rodata+0x270
  a4:	f2c00008 	movk	x8, #0x0, lsl #32
			a4: R_AARCH64_MOVW_UABS_G2_NC	.rodata+0x270
  a8:	f2e00008 	movk	x8, #0x0, lsl #48
			a8: R_AARCH64_MOVW_UABS_G3	.rodata+0x270
  ac:	f9000268 	str	x8, [x19]
  b0:	52800020 	mov	w0, #0x1                   	// #1
  b4:	a9424ff4 	ldp	x20, x19, [sp, #32]
  b8:	f9400bfe 	ldr	x30, [sp, #16]
  bc:	9100c3ff 	add	sp, sp, #0x30
  c0:	d65f03c0 	ret

00000000000000c4 <cfunc._ZN5numba5typed10listobject11impl_append12_3clocals_3e4implB2v6B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d>:
  c4:	d10103ff 	sub	sp, sp, #0x40
  c8:	a90257fe 	stp	x30, x21, [sp, #32]
  cc:	a9034ff4 	stp	x20, x19, [sp, #48]
  d0:	aa0303e5 	mov	x5, x3
  d4:	aa0103e3 	mov	x3, x1
  d8:	a9017fff 	stp	xzr, xzr, [sp, #16]
  dc:	910063e0 	add	x0, sp, #0x18
  e0:	910043e1 	add	x1, sp, #0x10
  e4:	aa0203e4 	mov	x4, x2
  e8:	94000000 	bl	0 <_ZN5numba5typed10listobject11impl_append12_3clocals_3e4implB2v6B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d>
			e8: R_AARCH64_CALL26	_ZN5numba5typed10listobject11impl_append12_3clocals_3e4implB2v6B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d
  ec:	a9414ff5 	ldp	x21, x19, [sp, #16]
  f0:	b9000fff 	str	wzr, [sp, #12]
  f4:	350000c0 	cbnz	w0, 10c <cfunc._ZN5numba5typed10listobject11impl_append12_3clocals_3e4implB2v6B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d+0x48>
  f8:	aa1303e0 	mov	x0, x19
  fc:	a9434ff4 	ldp	x20, x19, [sp, #48]
 100:	a94257fe 	ldp	x30, x21, [sp, #32]
 104:	910103ff 	add	sp, sp, #0x40
 108:	d65f03c0 	ret
 10c:	2a0003f4 	mov	w20, w0
 110:	910033e0 	add	x0, sp, #0xc
 114:	94000000 	bl	0 <numba_gil_ensure>
			114: R_AARCH64_CALL26	numba_gil_ensure
 118:	7100029f 	cmp	w20, #0x0
 11c:	5400012d 	b.le	140 <cfunc._ZN5numba5typed10listobject11impl_append12_3clocals_3e4implB2v6B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d+0x7c>
 120:	94000000 	bl	0 <PyErr_Clear>
			120: R_AARCH64_CALL26	PyErr_Clear
 124:	f9400aa2 	ldr	x2, [x21, #16]
 128:	b9400aa1 	ldr	w1, [x21, #8]
 12c:	f94002a0 	ldr	x0, [x21]
 130:	94000000 	bl	0 <numba_unpickle>
			130: R_AARCH64_CALL26	numba_unpickle
 134:	b4000140 	cbz	x0, 15c <cfunc._ZN5numba5typed10listobject11impl_append12_3clocals_3e4implB2v6B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d+0x98>
 138:	94000000 	bl	0 <numba_do_raise>
			138: R_AARCH64_CALL26	numba_do_raise
 13c:	14000008 	b	15c <cfunc._ZN5numba5typed10listobject11impl_append12_3clocals_3e4implB2v6B42c8tJTIcFHzwl2ILiXkcBV0KBSmNGHkyiCKJEEwA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d+0x98>
 140:	d2800001 	mov	x1, #0x0                   	// #0
			140: R_AARCH64_MOVW_UABS_G0_NC	.rodata+0x290
 144:	f2a00001 	movk	x1, #0x0, lsl #16
			144: R_AARCH64_MOVW_UABS_G1_NC	.rodata+0x290
 148:	f2c00001 	movk	x1, #0x0, lsl #32
			148: R_AARCH64_MOVW_UABS_G2_NC	.rodata+0x290
 14c:	f2e00001 	movk	x1, #0x0, lsl #48
			14c: R_AARCH64_MOVW_UABS_G3	.rodata+0x290
 150:	90000000 	adrp	x0, 0 <PyExc_SystemError>
			150: R_AARCH64_ADR_GOT_PAGE	PyExc_SystemError
 154:	f9400000 	ldr	x0, [x0]
			154: R_AARCH64_LD64_GOT_LO12_NC	PyExc_SystemError
 158:	94000000 	bl	0 <PyErr_SetString>
			158: R_AARCH64_CALL26	PyErr_SetString
 15c:	d2800000 	mov	x0, #0x0                   	// #0
			15c: R_AARCH64_MOVW_UABS_G0_NC	.rodata+0x2c0
 160:	f2a00000 	movk	x0, #0x0, lsl #16
			160: R_AARCH64_MOVW_UABS_G1_NC	.rodata+0x2c0
 164:	f2c00000 	movk	x0, #0x0, lsl #32
			164: R_AARCH64_MOVW_UABS_G2_NC	.rodata+0x2c0
 168:	f2e00000 	movk	x0, #0x0, lsl #48
			168: R_AARCH64_MOVW_UABS_G3	.rodata+0x2c0
 16c:	94000000 	bl	0 <PyUnicode_FromString>
			16c: R_AARCH64_CALL26	PyUnicode_FromString
 170:	aa0003f4 	mov	x20, x0
 174:	94000000 	bl	0 <PyErr_WriteUnraisable>
			174: R_AARCH64_CALL26	PyErr_WriteUnraisable
 178:	aa1403e0 	mov	x0, x20
 17c:	94000000 	bl	0 <Py_DecRef>
			17c: R_AARCH64_CALL26	Py_DecRef
 180:	910033e0 	add	x0, sp, #0xc
 184:	94000000 	bl	0 <numba_gil_release>
			184: R_AARCH64_CALL26	numba_gil_release
 188:	aa1303e0 	mov	x0, x19
 18c:	a9434ff4 	ldp	x20, x19, [sp, #48]
 190:	a94257fe 	ldp	x30, x21, [sp, #32]
 194:	910103ff 	add	sp, sp, #0x40
 198:	d65f03c0 	ret

obj8.elf:     file format elf64-littleaarch64


Disassembly of section .text:

0000000000000000 <_ZN5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d>:
   0:	d10143ff 	sub	sp, sp, #0x50
   4:	f9000bfe 	str	x30, [sp, #16]
   8:	a9025ff8 	stp	x24, x23, [sp, #32]
   c:	a90357f6 	stp	x22, x21, [sp, #48]
  10:	a9044ff4 	stp	x20, x19, [sp, #64]
  14:	aa0503f7 	mov	x23, x5
  18:	aa0403f6 	mov	x22, x4
  1c:	aa0303f8 	mov	x24, x3
  20:	aa0203f5 	mov	x21, x2
  24:	aa0103f3 	mov	x19, x1
  28:	aa0003f4 	mov	x20, x0
  2c:	aa0203e0 	mov	x0, x2
  30:	94000000 	bl	4a4 <NRT_incref>
			30: R_AARCH64_CALL26	NRT_incref
  34:	aa1603e0 	mov	x0, x22
  38:	94000000 	bl	4a4 <NRT_incref>
			38: R_AARCH64_CALL26	NRT_incref
  3c:	a9005ff6 	stp	x22, x23, [sp]
  40:	910003e1 	mov	x1, sp
  44:	aa1803e0 	mov	x0, x24
  48:	94000000 	bl	0 <numba_list_append>
			48: R_AARCH64_CALL26	numba_list_append
  4c:	3100141f 	cmn	w0, #0x5
  50:	54000120 	b.eq	74 <_ZN5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d+0x74>  // b.none
  54:	340001a0 	cbz	w0, 88 <_ZN5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d+0x88>
  58:	3100081f 	cmn	w0, #0x2
  5c:	540002e1 	b.ne	b8 <_ZN5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d+0xb8>  // b.any
  60:	d2800008 	mov	x8, #0x0                   	// #0
			60: R_AARCH64_MOVW_UABS_G0_NC	.rodata+0x360
  64:	f2a00008 	movk	x8, #0x0, lsl #16
			64: R_AARCH64_MOVW_UABS_G1_NC	.rodata+0x360
  68:	f2c00008 	movk	x8, #0x0, lsl #32
			68: R_AARCH64_MOVW_UABS_G2_NC	.rodata+0x360
  6c:	f2e00008 	movk	x8, #0x0, lsl #48
			6c: R_AARCH64_MOVW_UABS_G3	.rodata+0x360
  70:	14000016 	b	c8 <_ZN5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d+0xc8>
  74:	d2800008 	mov	x8, #0x0                   	// #0
			74: R_AARCH64_MOVW_UABS_G0_NC	.rodata+0x280
  78:	f2a00008 	movk	x8, #0x0, lsl #16
			78: R_AARCH64_MOVW_UABS_G1_NC	.rodata+0x280
  7c:	f2c00008 	movk	x8, #0x0, lsl #32
			7c: R_AARCH64_MOVW_UABS_G2_NC	.rodata+0x280
  80:	f2e00008 	movk	x8, #0x0, lsl #48
			80: R_AARCH64_MOVW_UABS_G3	.rodata+0x280
  84:	14000011 	b	c8 <_ZN5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d+0xc8>
  88:	aa1603e0 	mov	x0, x22
  8c:	94000000 	bl	4b4 <NRT_decref>
			8c: R_AARCH64_CALL26	NRT_decref
  90:	aa1503e0 	mov	x0, x21
  94:	94000000 	bl	4b4 <NRT_decref>
			94: R_AARCH64_CALL26	NRT_decref
  98:	2a1f03e0 	mov	w0, wzr
  9c:	f900029f 	str	xzr, [x20]
  a0:	a9444ff4 	ldp	x20, x19, [sp, #64]
  a4:	a94357f6 	ldp	x22, x21, [sp, #48]
  a8:	a9425ff8 	ldp	x24, x23, [sp, #32]
  ac:	f9400bfe 	ldr	x30, [sp, #16]
  b0:	910143ff 	add	sp, sp, #0x50
  b4:	d65f03c0 	ret
  b8:	d2800008 	mov	x8, #0x0                   	// #0
			b8: R_AARCH64_MOVW_UABS_G0_NC	.rodata+0x440
  bc:	f2a00008 	movk	x8, #0x0, lsl #16
			bc: R_AARCH64_MOVW_UABS_G1_NC	.rodata+0x440
  c0:	f2c00008 	movk	x8, #0x0, lsl #32
			c0: R_AARCH64_MOVW_UABS_G2_NC	.rodata+0x440
  c4:	f2e00008 	movk	x8, #0x0, lsl #48
			c4: R_AARCH64_MOVW_UABS_G3	.rodata+0x440
  c8:	f9000268 	str	x8, [x19]
  cc:	52800020 	mov	w0, #0x1                   	// #1
  d0:	a9444ff4 	ldp	x20, x19, [sp, #64]
  d4:	a94357f6 	ldp	x22, x21, [sp, #48]
  d8:	a9425ff8 	ldp	x24, x23, [sp, #32]
  dc:	f9400bfe 	ldr	x30, [sp, #16]
  e0:	910143ff 	add	sp, sp, #0x50
  e4:	d65f03c0 	ret

00000000000000e8 <_ZN7cpython5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d>:
  e8:	d101c3ff 	sub	sp, sp, #0x70
  ec:	f90013fe 	str	x30, [sp, #32]
  f0:	a90367fa 	stp	x26, x25, [sp, #48]
  f4:	a9045ff8 	stp	x24, x23, [sp, #64]
  f8:	a90557f6 	stp	x22, x21, [sp, #80]
  fc:	a9064ff4 	stp	x20, x19, [sp, #96]
 100:	aa0103e0 	mov	x0, x1
 104:	d2800001 	mov	x1, #0x0                   	// #0
			104: R_AARCH64_MOVW_UABS_G0_NC	.rodata
 108:	9100a3e4 	add	x4, sp, #0x28
 10c:	910063e5 	add	x5, sp, #0x18
 110:	f2a00001 	movk	x1, #0x0, lsl #16
			110: R_AARCH64_MOVW_UABS_G1_NC	.rodata
 114:	f2c00001 	movk	x1, #0x0, lsl #32
			114: R_AARCH64_MOVW_UABS_G2_NC	.rodata
 118:	f2e00001 	movk	x1, #0x0, lsl #48
			118: R_AARCH64_MOVW_UABS_G3	.rodata
 11c:	52800042 	mov	w2, #0x2                   	// #2
 120:	52800043 	mov	w3, #0x2                   	// #2
 124:	94000000 	bl	0 <PyArg_UnpackTuple>
			124: R_AARCH64_CALL26	PyArg_UnpackTuple
 128:	a900ffff 	stp	xzr, xzr, [sp, #8]
 12c:	340012e0 	cbz	w0, 388 <_ZN7cpython5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d+0x2a0>
 130:	90000008 	adrp	x8, 8 <_ZN5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d+0x8>
			130: R_AARCH64_ADR_GOT_PAGE	_ZN08NumbaEnv5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d
 134:	f9400108 	ldr	x8, [x8]
			134: R_AARCH64_LD64_GOT_LO12_NC	_ZN08NumbaEnv5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d
 138:	f9400108 	ldr	x8, [x8]
 13c:	b4001388 	cbz	x8, 3ac <_ZN7cpython5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d+0x2c4>
 140:	f94017f3 	ldr	x19, [sp, #40]
 144:	d2800015 	mov	x21, #0x0                   	// #0
			144: R_AARCH64_MOVW_UABS_G0_NC	.rodata+0xc0
 148:	d2800017 	mov	x23, #0x0                   	// #0
			148: R_AARCH64_MOVW_UABS_G0_NC	.rodata+0xf0
 14c:	f2a00015 	movk	x21, #0x0, lsl #16
			14c: R_AARCH64_MOVW_UABS_G1_NC	.rodata+0xc0
 150:	f2a00017 	movk	x23, #0x0, lsl #16
			150: R_AARCH64_MOVW_UABS_G1_NC	.rodata+0xf0
 154:	f2c00015 	movk	x21, #0x0, lsl #32
			154: R_AARCH64_MOVW_UABS_G2_NC	.rodata+0xc0
 158:	f2c00017 	movk	x23, #0x0, lsl #32
			158: R_AARCH64_MOVW_UABS_G2_NC	.rodata+0xf0
 15c:	f2e00015 	movk	x21, #0x0, lsl #48
			15c: R_AARCH64_MOVW_UABS_G3	.rodata+0xc0
 160:	f2e00017 	movk	x23, #0x0, lsl #48
			160: R_AARCH64_MOVW_UABS_G3	.rodata+0xf0
 164:	528005a1 	mov	w1, #0x2d                  	// #45
 168:	aa1503e0 	mov	x0, x21
 16c:	aa1703e2 	mov	x2, x23
 170:	94000000 	bl	0 <numba_unpickle>
			170: R_AARCH64_CALL26	numba_unpickle
 174:	aa0003f8 	mov	x24, x0
 178:	aa1303e0 	mov	x0, x19
 17c:	94000000 	bl	0 <PyObject_Type>
			17c: R_AARCH64_CALL26	PyObject_Type
 180:	aa0003f9 	mov	x25, x0
 184:	eb18001f 	cmp	x0, x24
 188:	d2800016 	mov	x22, #0x0                   	// #0
			188: R_AARCH64_MOVW_UABS_G0_NC	.rodata+0x110
 18c:	54000260 	b.eq	1d8 <_ZN7cpython5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d+0xf0>  // b.none
 190:	aa1603e1 	mov	x1, x22
 194:	f2a00001 	movk	x1, #0x0, lsl #16
			194: R_AARCH64_MOVW_UABS_G1_NC	.rodata+0x110
 198:	f2c00001 	movk	x1, #0x0, lsl #32
			198: R_AARCH64_MOVW_UABS_G2_NC	.rodata+0x110
 19c:	f2e00001 	movk	x1, #0x0, lsl #48
			19c: R_AARCH64_MOVW_UABS_G3	.rodata+0x110
 1a0:	90000000 	adrp	x0, 0 <PyExc_TypeError>
			1a0: R_AARCH64_ADR_GOT_PAGE	PyExc_TypeError
 1a4:	f9400000 	ldr	x0, [x0]
			1a4: R_AARCH64_LD64_GOT_LO12_NC	PyExc_TypeError
 1a8:	aa1903e2 	mov	x2, x25
 1ac:	aa1803e3 	mov	x3, x24
 1b0:	94000000 	bl	0 <PyErr_Format>
			1b0: R_AARCH64_CALL26	PyErr_Format
 1b4:	aa1f03f3 	mov	x19, xzr
 1b8:	aa1f03f4 	mov	x20, xzr
 1bc:	aa1803e0 	mov	x0, x24
 1c0:	94000000 	bl	0 <Py_DecRef>
			1c0: R_AARCH64_CALL26	Py_DecRef
 1c4:	aa1903e0 	mov	x0, x25
 1c8:	94000000 	bl	0 <Py_DecRef>
			1c8: R_AARCH64_CALL26	Py_DecRef
 1cc:	eb18033f 	cmp	x25, x24
 1d0:	540002a0 	b.eq	224 <_ZN7cpython5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d+0x13c>  // b.none
 1d4:	1400006d 	b	388 <_ZN7cpython5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d+0x2a0>
 1d8:	d2800001 	mov	x1, #0x0                   	// #0
			1d8: R_AARCH64_MOVW_UABS_G0_NC	.rodata+0x104
 1dc:	f2a00001 	movk	x1, #0x0, lsl #16
			1dc: R_AARCH64_MOVW_UABS_G1_NC	.rodata+0x104
 1e0:	f2c00001 	movk	x1, #0x0, lsl #32
			1e0: R_AARCH64_MOVW_UABS_G2_NC	.rodata+0x104
 1e4:	f2e00001 	movk	x1, #0x0, lsl #48
			1e4: R_AARCH64_MOVW_UABS_G3	.rodata+0x104
 1e8:	aa1303e0 	mov	x0, x19
 1ec:	94000000 	bl	0 <PyObject_GetAttrString>
			1ec: R_AARCH64_CALL26	PyObject_GetAttrString
 1f0:	aa0003fa 	mov	x26, x0
 1f4:	94000000 	bl	0 <NRT_meminfo_from_pyobject>
			1f4: R_AARCH64_CALL26	NRT_meminfo_from_pyobject
 1f8:	aa0003f3 	mov	x19, x0
 1fc:	f9400c08 	ldr	x8, [x0, #24]
 200:	f9400114 	ldr	x20, [x8]
 204:	aa1a03e0 	mov	x0, x26
 208:	94000000 	bl	0 <Py_DecRef>
			208: R_AARCH64_CALL26	Py_DecRef
 20c:	aa1803e0 	mov	x0, x24
 210:	94000000 	bl	0 <Py_DecRef>
			210: R_AARCH64_CALL26	Py_DecRef
 214:	aa1903e0 	mov	x0, x25
 218:	94000000 	bl	0 <Py_DecRef>
			218: R_AARCH64_CALL26	Py_DecRef
 21c:	eb18033f 	cmp	x25, x24
 220:	54000b41 	b.ne	388 <_ZN7cpython5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d+0x2a0>  // b.any
 224:	f9400ff8 	ldr	x24, [sp, #24]
 228:	528005a1 	mov	w1, #0x2d                  	// #45
 22c:	aa1503e0 	mov	x0, x21
 230:	aa1703e2 	mov	x2, x23
 234:	94000000 	bl	0 <numba_unpickle>
			234: R_AARCH64_CALL26	numba_unpickle
 238:	aa0003f5 	mov	x21, x0
 23c:	aa1803e0 	mov	x0, x24
 240:	94000000 	bl	0 <PyObject_Type>
			240: R_AARCH64_CALL26	PyObject_Type
 244:	aa0003f7 	mov	x23, x0
 248:	eb15001f 	cmp	x0, x21
 24c:	54000500 	b.eq	2ec <_ZN7cpython5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d+0x204>  // b.none
 250:	f2a00016 	movk	x22, #0x0, lsl #16
			250: R_AARCH64_MOVW_UABS_G1_NC	.rodata+0x110
 254:	f2c00016 	movk	x22, #0x0, lsl #32
			254: R_AARCH64_MOVW_UABS_G2_NC	.rodata+0x110
 258:	f2e00016 	movk	x22, #0x0, lsl #48
			258: R_AARCH64_MOVW_UABS_G3	.rodata+0x110
 25c:	90000000 	adrp	x0, 0 <PyExc_TypeError>
			25c: R_AARCH64_ADR_GOT_PAGE	PyExc_TypeError
 260:	f9400000 	ldr	x0, [x0]
			260: R_AARCH64_LD64_GOT_LO12_NC	PyExc_TypeError
 264:	aa1603e1 	mov	x1, x22
 268:	aa1703e2 	mov	x2, x23
 26c:	aa1503e3 	mov	x3, x21
 270:	94000000 	bl	0 <PyErr_Format>
			270: R_AARCH64_CALL26	PyErr_Format
 274:	aa1f03f6 	mov	x22, xzr
 278:	aa1f03f8 	mov	x24, xzr
 27c:	aa1503e0 	mov	x0, x21
 280:	94000000 	bl	0 <Py_DecRef>
			280: R_AARCH64_CALL26	Py_DecRef
 284:	aa1703e0 	mov	x0, x23
 288:	94000000 	bl	0 <Py_DecRef>
			288: R_AARCH64_CALL26	Py_DecRef
 28c:	eb1502ff 	cmp	x23, x21
 290:	54000541 	b.ne	338 <_ZN7cpython5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d+0x250>  // b.any
 294:	f9000bff 	str	xzr, [sp, #16]
 298:	910043e0 	add	x0, sp, #0x10
 29c:	910023e1 	add	x1, sp, #0x8
 2a0:	aa1303e2 	mov	x2, x19
 2a4:	aa1403e3 	mov	x3, x20
 2a8:	aa1603e4 	mov	x4, x22
 2ac:	aa1803e5 	mov	x5, x24
 2b0:	94000000 	bl	0 <_ZN5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d>
			2b0: R_AARCH64_CALL26	_ZN5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d
 2b4:	f94007f5 	ldr	x21, [sp, #8]
 2b8:	2a0003f4 	mov	w20, w0
 2bc:	aa1303e0 	mov	x0, x19
 2c0:	94000000 	bl	4b4 <NRT_decref>
			2c0: R_AARCH64_CALL26	NRT_decref
 2c4:	aa1603e0 	mov	x0, x22
 2c8:	94000000 	bl	4b4 <NRT_decref>
			2c8: R_AARCH64_CALL26	NRT_decref
 2cc:	31000a9f 	cmn	w20, #0x2
 2d0:	54000040 	b.eq	2d8 <_ZN7cpython5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d+0x1f0>  // b.none
 2d4:	35000394 	cbnz	w20, 344 <_ZN7cpython5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d+0x25c>
 2d8:	90000013 	adrp	x19, 0 <_Py_NoneStruct>
			2d8: R_AARCH64_ADR_GOT_PAGE	_Py_NoneStruct
 2dc:	f9400273 	ldr	x19, [x19]
			2dc: R_AARCH64_LD64_GOT_LO12_NC	_Py_NoneStruct
 2e0:	aa1303e0 	mov	x0, x19
 2e4:	94000000 	bl	0 <Py_IncRef>
			2e4: R_AARCH64_CALL26	Py_IncRef
 2e8:	14000029 	b	38c <_ZN7cpython5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d+0x2a4>
 2ec:	d2800001 	mov	x1, #0x0                   	// #0
			2ec: R_AARCH64_MOVW_UABS_G0_NC	.rodata+0x104
 2f0:	f2a00001 	movk	x1, #0x0, lsl #16
			2f0: R_AARCH64_MOVW_UABS_G1_NC	.rodata+0x104
 2f4:	f2c00001 	movk	x1, #0x0, lsl #32
			2f4: R_AARCH64_MOVW_UABS_G2_NC	.rodata+0x104
 2f8:	f2e00001 	movk	x1, #0x0, lsl #48
			2f8: R_AARCH64_MOVW_UABS_G3	.rodata+0x104
 2fc:	aa1803e0 	mov	x0, x24
 300:	94000000 	bl	0 <PyObject_GetAttrString>
			300: R_AARCH64_CALL26	PyObject_GetAttrString
 304:	aa0003f9 	mov	x25, x0
 308:	94000000 	bl	0 <NRT_meminfo_from_pyobject>
			308: R_AARCH64_CALL26	NRT_meminfo_from_pyobject
 30c:	aa0003f6 	mov	x22, x0
 310:	f9400c08 	ldr	x8, [x0, #24]
 314:	f9400118 	ldr	x24, [x8]
 318:	aa1903e0 	mov	x0, x25
 31c:	94000000 	bl	0 <Py_DecRef>
			31c: R_AARCH64_CALL26	Py_DecRef
 320:	aa1503e0 	mov	x0, x21
 324:	94000000 	bl	0 <Py_DecRef>
			324: R_AARCH64_CALL26	Py_DecRef
 328:	aa1703e0 	mov	x0, x23
 32c:	94000000 	bl	0 <Py_DecRef>
			32c: R_AARCH64_CALL26	Py_DecRef
 330:	eb1502ff 	cmp	x23, x21
 334:	54fffb00 	b.eq	294 <_ZN7cpython5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d+0x1ac>  // b.none
 338:	aa1303e0 	mov	x0, x19
 33c:	94000000 	bl	4b4 <NRT_decref>
			33c: R_AARCH64_CALL26	NRT_decref
 340:	14000012 	b	388 <_ZN7cpython5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d+0x2a0>
 344:	7100029f 	cmp	w20, #0x0
 348:	5400012d 	b.le	36c <_ZN7cpython5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d+0x284>
 34c:	94000000 	bl	0 <PyErr_Clear>
			34c: R_AARCH64_CALL26	PyErr_Clear
 350:	f9400aa2 	ldr	x2, [x21, #16]
 354:	b9400aa1 	ldr	w1, [x21, #8]
 358:	f94002a0 	ldr	x0, [x21]
 35c:	94000000 	bl	0 <numba_unpickle>
			35c: R_AARCH64_CALL26	numba_unpickle
 360:	b4000140 	cbz	x0, 388 <_ZN7cpython5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d+0x2a0>
 364:	94000000 	bl	0 <numba_do_raise>
			364: R_AARCH64_CALL26	numba_do_raise
 368:	14000008 	b	388 <_ZN7cpython5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d+0x2a0>
 36c:	d2800001 	mov	x1, #0x0                   	// #0
			36c: R_AARCH64_MOVW_UABS_G0_NC	.rodata+0x130
 370:	f2a00001 	movk	x1, #0x0, lsl #16
			370: R_AARCH64_MOVW_UABS_G1_NC	.rodata+0x130
 374:	f2c00001 	movk	x1, #0x0, lsl #32
			374: R_AARCH64_MOVW_UABS_G2_NC	.rodata+0x130
 378:	f2e00001 	movk	x1, #0x0, lsl #48
			378: R_AARCH64_MOVW_UABS_G3	.rodata+0x130
 37c:	90000000 	adrp	x0, 0 <PyExc_SystemError>
			37c: R_AARCH64_ADR_GOT_PAGE	PyExc_SystemError
 380:	f9400000 	ldr	x0, [x0]
			380: R_AARCH64_LD64_GOT_LO12_NC	PyExc_SystemError
 384:	94000000 	bl	0 <PyErr_SetString>
			384: R_AARCH64_CALL26	PyErr_SetString
 388:	aa1f03f3 	mov	x19, xzr
 38c:	aa1303e0 	mov	x0, x19
 390:	a9464ff4 	ldp	x20, x19, [sp, #96]
 394:	a94557f6 	ldp	x22, x21, [sp, #80]
 398:	a9445ff8 	ldp	x24, x23, [sp, #64]
 39c:	a94367fa 	ldp	x26, x25, [sp, #48]
 3a0:	f94013fe 	ldr	x30, [sp, #32]
 3a4:	9101c3ff 	add	sp, sp, #0x70
 3a8:	d65f03c0 	ret
 3ac:	d2800001 	mov	x1, #0x0                   	// #0
			3ac: R_AARCH64_MOVW_UABS_G0_NC	.rodata+0x10
 3b0:	f2a00001 	movk	x1, #0x0, lsl #16
			3b0: R_AARCH64_MOVW_UABS_G1_NC	.rodata+0x10
 3b4:	f2c00001 	movk	x1, #0x0, lsl #32
			3b4: R_AARCH64_MOVW_UABS_G2_NC	.rodata+0x10
 3b8:	f2e00001 	movk	x1, #0x0, lsl #48
			3b8: R_AARCH64_MOVW_UABS_G3	.rodata+0x10
 3bc:	90000000 	adrp	x0, 0 <PyExc_RuntimeError>
			3bc: R_AARCH64_ADR_GOT_PAGE	PyExc_RuntimeError
 3c0:	f9400000 	ldr	x0, [x0]
			3c0: R_AARCH64_LD64_GOT_LO12_NC	PyExc_RuntimeError
 3c4:	17fffff0 	b	384 <_ZN7cpython5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d+0x29c>

00000000000003c8 <cfunc._ZN5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d>:
 3c8:	d10103ff 	sub	sp, sp, #0x40
 3cc:	a90257fe 	stp	x30, x21, [sp, #32]
 3d0:	a9034ff4 	stp	x20, x19, [sp, #48]
 3d4:	aa0303e5 	mov	x5, x3
 3d8:	aa0203e4 	mov	x4, x2
 3dc:	aa0103e3 	mov	x3, x1
 3e0:	aa0003e2 	mov	x2, x0
 3e4:	a9017fff 	stp	xzr, xzr, [sp, #16]
 3e8:	910063e0 	add	x0, sp, #0x18
 3ec:	910043e1 	add	x1, sp, #0x10
 3f0:	94000000 	bl	0 <_ZN5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d>
			3f0: R_AARCH64_CALL26	_ZN5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d
 3f4:	a9414ff5 	ldp	x21, x19, [sp, #16]
 3f8:	b9000fff 	str	wzr, [sp, #12]
 3fc:	350000c0 	cbnz	w0, 414 <cfunc._ZN5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d+0x4c>
 400:	aa1303e0 	mov	x0, x19
 404:	a9434ff4 	ldp	x20, x19, [sp, #48]
 408:	a94257fe 	ldp	x30, x21, [sp, #32]
 40c:	910103ff 	add	sp, sp, #0x40
 410:	d65f03c0 	ret
 414:	2a0003f4 	mov	w20, w0
 418:	910033e0 	add	x0, sp, #0xc
 41c:	94000000 	bl	0 <numba_gil_ensure>
			41c: R_AARCH64_CALL26	numba_gil_ensure
 420:	7100029f 	cmp	w20, #0x0
 424:	5400012d 	b.le	448 <cfunc._ZN5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d+0x80>
 428:	94000000 	bl	0 <PyErr_Clear>
			428: R_AARCH64_CALL26	PyErr_Clear
 42c:	f9400aa2 	ldr	x2, [x21, #16]
 430:	b9400aa1 	ldr	w1, [x21, #8]
 434:	f94002a0 	ldr	x0, [x21]
 438:	94000000 	bl	0 <numba_unpickle>
			438: R_AARCH64_CALL26	numba_unpickle
 43c:	b4000140 	cbz	x0, 464 <cfunc._ZN5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d+0x9c>
 440:	94000000 	bl	0 <numba_do_raise>
			440: R_AARCH64_CALL26	numba_do_raise
 444:	14000008 	b	464 <cfunc._ZN5numba5typed9typedlist7_appendB2v5B38c8tJTIcFHzwl2ILiXkcBV0KBSgP9CGZpAgA_3dE33ListType_5bListType_5bint64_5d_5d19ListType_5bint64_5d+0x9c>
 448:	d2800001 	mov	x1, #0x0                   	// #0
			448: R_AARCH64_MOVW_UABS_G0_NC	.rodata+0x160
 44c:	f2a00001 	movk	x1, #0x0, lsl #16
			44c: R_AARCH64_MOVW_UABS_G1_NC	.rodata+0x160
 450:	f2c00001 	movk	x1, #0x0, lsl #32
			450: R_AARCH64_MOVW_UABS_G2_NC	.rodata+0x160
 454:	f2e00001 	movk	x1, #0x0, lsl #48
			454: R_AARCH64_MOVW_UABS_G3	.rodata+0x160
 458:	90000000 	adrp	x0, 0 <PyExc_SystemError>
			458: R_AARCH64_ADR_GOT_PAGE	PyExc_SystemError
 45c:	f9400000 	ldr	x0, [x0]
			45c: R_AARCH64_LD64_GOT_LO12_NC	PyExc_SystemError
 460:	94000000 	bl	0 <PyErr_SetString>
			460: R_AARCH64_CALL26	PyErr_SetString
 464:	d2800000 	mov	x0, #0x0                   	// #0
			464: R_AARCH64_MOVW_UABS_G0_NC	.rodata+0x190
 468:	f2a00000 	movk	x0, #0x0, lsl #16
			468: R_AARCH64_MOVW_UABS_G1_NC	.rodata+0x190
 46c:	f2c00000 	movk	x0, #0x0, lsl #32
			46c: R_AARCH64_MOVW_UABS_G2_NC	.rodata+0x190
 470:	f2e00000 	movk	x0, #0x0, lsl #48
			470: R_AARCH64_MOVW_UABS_G3	.rodata+0x190
 474:	94000000 	bl	0 <PyUnicode_FromString>
			474: R_AARCH64_CALL26	PyUnicode_FromString
 478:	aa0003f4 	mov	x20, x0
 47c:	94000000 	bl	0 <PyErr_WriteUnraisable>
			47c: R_AARCH64_CALL26	PyErr_WriteUnraisable
 480:	aa1403e0 	mov	x0, x20
 484:	94000000 	bl	0 <Py_DecRef>
			484: R_AARCH64_CALL26	Py_DecRef
 488:	910033e0 	add	x0, sp, #0xc
 48c:	94000000 	bl	0 <numba_gil_release>
			48c: R_AARCH64_CALL26	numba_gil_release
 490:	aa1303e0 	mov	x0, x19
 494:	a9434ff4 	ldp	x20, x19, [sp, #48]
 498:	a94257fe 	ldp	x30, x21, [sp, #32]
 49c:	910103ff 	add	sp, sp, #0x40
 4a0:	d65f03c0 	ret

00000000000004a4 <NRT_incref>:
 4a4:	b4000060 	cbz	x0, 4b0 <NRT_incref+0xc>
 4a8:	52800028 	mov	w8, #0x1                   	// #1
 4ac:	f8280008 	ldadd	x8, x8, [x0]
 4b0:	d65f03c0 	ret

00000000000004b4 <NRT_decref>:
 4b4:	b40000c0 	cbz	x0, 4cc <NRT_decref+0x18>
 4b8:	d5033bbf 	dmb	ish
 4bc:	92800008 	mov	x8, #0xffffffffffffffff    	// #-1
 4c0:	f8280008 	ldadd	x8, x8, [x0]
 4c4:	f100051f 	cmp	x8, #0x1
 4c8:	54000040 	b.eq	4d0 <NRT_decref+0x1c>  // b.none
 4cc:	d65f03c0 	ret
 4d0:	d50339bf 	dmb	ishld
 4d4:	14000000 	b	0 <NRT_MemInfo_call_dtor>
			4d4: R_AARCH64_JUMP26	NRT_MemInfo_call_dtor
