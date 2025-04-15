	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 4
	.syntax unified
	.globl	_addMatracies                   @ -- Begin function addMatracies
	.p2align	2
	.code	32                              @ @addMatracies
_addMatracies:
@ %bb.0:
	sub	sp, sp, #16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	mov	r0, #0
	str	r0, [sp]
	b	LBB0_1
LBB0_1:                                 @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp]
	cmp	r0, #4
	bgt	LBB0_4
	b	LBB0_2
LBB0_2:                                 @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #8]
	ldr	r2, [sp]
	ldr	r0, [r0, r2, lsl #2]
	ldr	r1, [sp, #4]
	ldr	r1, [r1, r2, lsl #2]
	add	r0, r0, r1
	ldr	r1, [sp, #12]
	str	r0, [r1, r2, lsl #2]
	b	LBB0_3
LBB0_3:                                 @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp]
	add	r0, r0, #1
	str	r0, [sp]
	b	LBB0_1
LBB0_4:
	add	sp, sp, #16
	bx	lr
                                        @ -- End function
	.globl	_main                           @ -- Begin function main
	.p2align	2
	.code	32                              @ @main
_main:
@ %bb.0:
	push	{r4, r5, r6, r7, lr}
	add	r7, sp, #12
	sub	sp, sp, #68
	ldr	r0, LCPI1_0
LPC1_0:
	add	r0, pc, r0
	ldr	r0, [r0]
	ldr	r0, [r0]
	str	r0, [r7, #-16]
	mov	r0, #0
	str	r0, [sp]
	ldr	r2, LCPI1_1
LPC1_1:
	add	r2, pc, r2
	add	r1, sp, #24
	mov	r0, r1
	ldm	r2, {r3, r4, r5, r12, lr}
	stm	r0, {r3, r4, r5, r12, lr}
	ldr	r3, LCPI1_2
LPC1_2:
	add	r3, pc, r3
	add	r2, sp, #4
	mov	r0, r2
	ldm	r3, {r4, r5, r6, r12, lr}
	stm	r0, {r4, r5, r6, r12, lr}
	sub	r0, r7, #36
	bl	_addMatracies
	ldr	r0, LCPI1_3
LPC1_3:
	add	r0, pc, r0
	ldr	r0, [r0]
	ldr	r0, [r0]
	ldr	r1, [r7, #-16]
	cmp	r0, r1
	bne	LBB1_2
	b	LBB1_1
LBB1_1:
	mov	r0, #1
	sub	sp, r7, #12
	pop	{r4, r5, r6, r7, lr}
	bx	lr
LBB1_2:
	bl	___stack_chk_fail
	.p2align	2
@ %bb.3:
	.data_region
LCPI1_0:
	.long	L___stack_chk_guard$non_lazy_ptr-(LPC1_0+8)
LCPI1_1:
	.long	l___const.main.matrix1-(LPC1_1+8)
LCPI1_2:
	.long	l___const.main.matrix2-(LPC1_2+8)
LCPI1_3:
	.long	L___stack_chk_guard$non_lazy_ptr-(LPC1_3+8)
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
