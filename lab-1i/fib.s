	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	@ ADD/MODIFY CODE BELOW
	@ PROLOG
	push {r3, r4, r5, r6, lr}

	subs r4,r0,#0
	@ R4 = R0 - 0 (update flags)
	mov r3, #-1
	@ R3 is pre = -1
	mov r4,#1
	@ R4 is result = 1
	mov r6,#0
	@ R6 is i
	mov r5,#0
	@ R5 is sum = 0
.L3:
	add r5,r4,r3
	@ Sum = Result + Pre
	mov r3,r4
	@ Pre = Result
	mov r4,r5
	@Result = Sum
	

	add r6,r6,#1
	@ R6 = R6+1
	cmp r0,r6
	@ Compare R0 with R6
	bcs .L3
	@ If R0 >= R6 goto loop .L3

	mov r0,r4
	pop {r3, r4, r5, r6 , pc}		@EPILOG

	@ END CODE MODIFICATION


	.size fibonacci, .-fibonacci
	.end
