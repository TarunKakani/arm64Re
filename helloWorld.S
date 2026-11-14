.data
	msg: .ascii "Hello ARM64\n"
	len = . - msg

.text
.globl _start

_start:
	// write the message to stdout
	mov x0, #1
	ldr x1, =msg
	ldr x2, =len
	mov x8, #64
	svc #0

	mov x0, #0
	mov x8, #93
	svc #0

