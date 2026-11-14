.global _start
.section .text

_start:
	// loading a 64 bit value : 0x1234567890ABCDEF into x0
	movz x0, #0xCDEF, lsl #0
	movz x0, #0x90AB, lsl #16
	movz x0, #0x5678, lsl #32
	movz x0, #0x1234, lsl #48

	mov x8, #93
	mov x0, #0
	svc #0

