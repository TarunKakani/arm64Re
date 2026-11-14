.global _start
.section .text
_start:
	mov x0, #42 // move immediate value 42 to register x0
	mov x1, x0 // copy value from x0 to x1

	// exit syscall
	mov x8, #93
	mov x0, #0
	svc #0 // supervisor call to invoke the syscall
