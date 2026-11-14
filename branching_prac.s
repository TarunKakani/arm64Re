.global _start
.section .text

_start:
	mov x0, #5
	mov x1, #5

	cmp x0, x1

	b.eq equal

	mov x2, #0
	b end

equal:
	mov x2, #1

	mov x0, #3
	mov x1, #5

	cmp x0, x1
	b.lt less_than

	mov x3, #0
	b end
less_than:
	mov x3, #1
	mov x0, #10
	mov x1, #5

	cmp x0, x1
	b.gt greater_than

	mov x4, #0
	b end

greater_than:
	mov x4, #1

end:
	b .
