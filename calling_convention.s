.global _start
.section .text

_start:
	mov x0, #5
	mov x1, #2

	bl add_numbers

	mov x8, #93
	mov x0, #0
	svc #0

add_numbers:
	add x0, x0, x1
	ret
