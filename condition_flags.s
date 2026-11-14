.global _start
.section .text

_start:
	mov x0, #5
	mov x1, #3

	subs x2, x0, x1
	
	// infinite loop to stop execution
	b .
