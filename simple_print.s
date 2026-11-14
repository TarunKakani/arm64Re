.global _start
.section .text

_start:
	mov x0, #1 // file descriptor 1 is stdout
	ldr x1, =message // load address of the message
	mov x2, #14 // message length
	mov x8, #64 // syscall for write

	svc #0

	mov x8, #93
	mov x0, #0
	svc #0

.section .data
message:
	.ascii "Hello World\n"
