	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 4
	.syntax unified
	.globl	_main                           @ -- Begin function main
	.p2align	2
	.code	32                              @ @main
_main:
@ %bb.0:
	push	{r4, r7, lr}
	add	r7, sp, #4
	sub	sp, sp, #84
	ldr	r0, LCPI0_0
LPC0_0:
	add	r0, pc, r0
	ldr	r0, [r0]
	ldr	r0, [r0]
	str	r0, [r7, #-8]
	mov	r0, #0
	str	r0, [sp, #16]
	ldr	r1, LCPI0_1
LPC0_1:
	add	r1, pc, r1
	add	r0, sp, #40
	str	r0, [sp, #4]                    @ 4-byte Spill
	ldm	r1, {r2, r3, r4, r12, lr}
	stm	r0, {r2, r3, r4, r12, lr}
	ldr	r1, LCPI0_2
LPC0_2:
	add	r1, pc, r1
	add	r0, sp, #20
	str	r0, [sp, #8]                    @ 4-byte Spill
	ldm	r1, {r2, r3, r4, r12, lr}
	stm	r0, {r2, r3, r4, r12, lr}
	add	r0, sp, #12
	str	r0, [sp]                        @ 4-byte Spill
	mov	r1, #5
	bl	__ZN15MatrixFunctionsC1Ei
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	sub	r1, r7, #28
	bl	__ZN15MatrixFunctions12addMatraciesEPiS0_S0_
	ldr	r0, LCPI0_3
LPC0_3:
	add	r0, pc, r0
	ldr	r0, [r0]
	ldr	r0, [r0]
	ldr	r1, [r7, #-8]
	cmp	r0, r1
	bne	LBB0_2
	b	LBB0_1
LBB0_1:
	mov	r0, #1
	sub	sp, r7, #4
	pop	{r4, r7, lr}
	bx	lr
LBB0_2:
	bl	___stack_chk_fail
	.p2align	2
@ %bb.3:
	.data_region
LCPI0_0:
	.long	L___stack_chk_guard$non_lazy_ptr-(LPC0_0+8)
LCPI0_1:
	.long	l___const.main.matrix1-(LPC0_1+8)
LCPI0_2:
	.long	l___const.main.matrix2-(LPC0_2+8)
LCPI0_3:
	.long	L___stack_chk_guard$non_lazy_ptr-(LPC0_3+8)
	.end_data_region
                                        @ -- End function
	.globl	__ZN15MatrixFunctionsC1Ei       @ -- Begin function _ZN15MatrixFunctionsC1Ei
	.weak_def_can_be_hidden	__ZN15MatrixFunctionsC1Ei
	.p2align	2
	.code	32                              @ @_ZN15MatrixFunctionsC1Ei
__ZN15MatrixFunctionsC1Ei:
@ %bb.0:
	push	{r7, lr}
	mov	r7, sp
	sub	sp, sp, #12
	str	r0, [r7, #-4]
	str	r1, [sp, #4]
	ldr	r0, [r7, #-4]
	str	r0, [sp]                        @ 4-byte Spill
	ldr	r1, [sp, #4]
	bl	__ZN15MatrixFunctionsC2Ei
	ldr	r0, [sp]                        @ 4-byte Reload
	mov	sp, r7
	pop	{r7, lr}
	bx	lr
                                        @ -- End function
	.globl	__ZN15MatrixFunctions12addMatraciesEPiS0_S0_ @ -- Begin function _ZN15MatrixFunctions12addMatraciesEPiS0_S0_
	.weak_definition	__ZN15MatrixFunctions12addMatraciesEPiS0_S0_
	.p2align	2
	.code	32                              @ @_ZN15MatrixFunctions12addMatraciesEPiS0_S0_
__ZN15MatrixFunctions12addMatraciesEPiS0_S0_:
@ %bb.0:
	sub	sp, sp, #24
	str	r0, [sp, #20]
	str	r1, [sp, #16]
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	ldr	r0, [sp, #20]
	str	r0, [sp]                        @ 4-byte Spill
	mov	r0, #0
	str	r0, [sp, #4]
	b	LBB2_1
LBB2_1:                                 @ =>This Inner Loop Header: Depth=1
	ldr	r1, [sp]                        @ 4-byte Reload
	ldr	r0, [sp, #4]
	ldr	r1, [r1]
	cmp	r0, r1
	bge	LBB2_4
	b	LBB2_2
LBB2_2:                                 @   in Loop: Header=BB2_1 Depth=1
	ldr	r0, [sp, #12]
	ldr	r2, [sp, #4]
	ldr	r0, [r0, r2, lsl #2]
	ldr	r1, [sp, #8]
	ldr	r1, [r1, r2, lsl #2]
	add	r0, r0, r1
	ldr	r1, [sp, #16]
	str	r0, [r1, r2, lsl #2]
	b	LBB2_3
LBB2_3:                                 @   in Loop: Header=BB2_1 Depth=1
	ldr	r0, [sp, #4]
	add	r0, r0, #1
	str	r0, [sp, #4]
	b	LBB2_1
LBB2_4:
	add	sp, sp, #24
	bx	lr
                                        @ -- End function
	.globl	__ZN15MatrixFunctionsC2Ei       @ -- Begin function _ZN15MatrixFunctionsC2Ei
	.weak_def_can_be_hidden	__ZN15MatrixFunctionsC2Ei
	.p2align	2
	.code	32                              @ @_ZN15MatrixFunctionsC2Ei
__ZN15MatrixFunctionsC2Ei:
@ %bb.0:
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	str	r1, [r0]
	add	sp, sp, #8
	bx	lr
                                        @ -- End function
	.section	__TEXT,__const
	.p2align	2, 0x0                          @ @__const.main.matrix1
l___const.main.matrix1:
	.long	1                               @ 0x1
	.long	0                               @ 0x0
	.long	0                               @ 0x0
	.long	0                               @ 0x0
	.long	0                               @ 0x0

	.p2align	2, 0x0                          @ @__const.main.matrix2
l___const.main.matrix2:
	.long	2                               @ 0x2
	.long	0                               @ 0x0
	.long	0                               @ 0x0
	.long	0                               @ 0x0
	.long	0                               @ 0x0

	.section	__DATA,__nl_symbol_ptr,non_lazy_symbol_pointers
	.p2align	2, 0x0
L___stack_chk_guard$non_lazy_ptr:
	.indirect_symbol	___stack_chk_guard
	.long	0

.subsections_via_symbols
