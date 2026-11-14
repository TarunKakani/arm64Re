.global _start
.section .text

_start:
	// execve("/bin/ls", ["/bin/ls", NULL], NULL)
	adr x0, filename // load address of /bin/ls
	mov x1, sp // use stack for argv
	str x0, [x1] // store /bin/ls as first arg
	mov x2, #0 // null terminate argv or else memory corruption
	str x2, [x1, #8] // store null after /bin/ls
	mov x2, #0 // no env variables
	mov x8, #221 // execve syscall number
	svc #0

filename:
	.asciz "/bin/ls"
