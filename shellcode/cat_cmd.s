.global _start
.section .text

_start:
	adr x0, filename
	mov x1, sp
	str x0, [x1]
	adr x2, passwd
	str x2, [x1, #8]
	mov x2, #0
	str x2, [x1, #16]
	mov x2, #0
	mov x8, #221
	svc #0

	mov x8, #93
	mov x0, x0
	svc #0
filename:
	.asciz "/bin/cat"
passwd:
	.asciz "/etc/passwd"
