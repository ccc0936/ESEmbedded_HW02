.syntax unified

.word 0x20000100
.word _start

.global _start
.type _start, %function
_start:
	nop
	push {r0,r1,r2}
	pop {r0,r1,r2}
	push {r0,r1,r2}
	push {r2,r0,r1}

