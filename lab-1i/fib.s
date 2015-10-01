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
	mov r3, #-1
	@ R4 = R0 - 0 (update flags)
	mov r4, #1
	@ if(R0 <= 0) goto .L3 (which returns 0)
	mov r6, #0
	mov r5, #0
.L3:
	add r5,r4,r3
	mov r3,r4
	mov r4,r5

	
	add r6,r6, #1
	cmp r0, r6
	bcs .L3
	
	mov r0,r4
	pop {r3, r4, r5, r6, pc}		@EPILOG

	@ END CODE MODIFICATION

	.size fibonacci, .-fibonacci
	.end
