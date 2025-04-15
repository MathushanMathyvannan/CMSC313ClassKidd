	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 4
	.syntax unified
	.globl	_main                           @ -- Begin function main
	.p2align	2
	.code	32                              @ @main
_main:
@ %bb.0:
	push	{r4, r5, r7, lr}
	add	r7, sp, #8
	sub	sp, sp, #72
	ldr	r0, LCPI0_0
LPC0_0:
	add	r0, pc, r0
	ldr	r0, [r0]
	ldr	r0, [r0]
	str	r0, [r7, #-12]
	mov	r0, #0
	str	r0, [sp, #4]
	ldr	r2, LCPI0_1
LPC0_1:
	add	r2, pc, r2
	add	r1, sp, #28
	ldm	r2, {r3, r4, r5, r12, lr}
	stm	r1, {r3, r4, r5, r12, lr}
	ldr	r2, LCPI0_2
LPC0_2:
	add	r2, pc, r2
	add	r1, sp, #8
	ldm	r2, {r3, r4, r5, r12, lr}
	stm	r1, {r3, r4, r5, r12, lr}
	str	r0, [sp]
	b	LBB0_1
LBB0_1:                                 @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp]
	cmp	r0, #4
	bgt	LBB0_4
	b	LBB0_2
LBB0_2:                                 @   in Loop: Header=BB0_1 Depth=1
	ldr	r2, [sp]
	add	r0, sp, #28
	ldr	r0, [r0, r2, lsl #2]
	add	r1, sp, #8
	ldr	r1, [r1, r2, lsl #2]
	add	r0, r0, r1
	sub	r1, r7, #32
	str	r0, [r1, r2, lsl #2]
	b	LBB0_3
LBB0_3:                                 @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp]
	add	r0, r0, #1
	str	r0, [sp]
	b	LBB0_1
LBB0_4:
	ldr	r0, LCPI0_3
LPC0_3:
	add	r0, pc, r0
	ldr	r0, [r0]
	ldr	r0, [r0]
	ldr	r1, [r7, #-12]
	cmp	r0, r1
	bne	LBB0_6
	b	LBB0_5
LBB0_5:
	mov	r0, #1
	sub	sp, r7, #8
	pop	{r4, r5, r7, lr}
	bx	lr
LBB0_6:
	bl	___stack_chk_fail
	.p2align	2
@ %bb.7:
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
