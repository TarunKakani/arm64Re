.global _start
.section .text

_start:
	mov x0, #40
	mov x1, #60

	add x2, x0, x1

	mov x8, #93
	mov x0, #0
	svc #0
