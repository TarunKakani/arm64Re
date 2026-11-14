.global _start
.section .text

_start:

	mov x0, #10
	mov x1, #20
	mov x2, #30

	// save the initial sp
	mov x3, sp

	// push x0, x1 onto the stack
	stp x0, x1, [sp, #-16]!

	// push x2 onto the stack
	str x2, [sp, #-16]!

	// modify the registers
	mov x0, #100
	mov x1, #200
	mov x2, #300

	// pop x2 from the stack
	ldr x2, [sp], #16

	// pop x0, x1 from the stack
	ldp x0, x1, [sp], #16

	// exit
	mov x8, #93
	mov x0, #0
	svc #0
