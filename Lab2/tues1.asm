;This program replaces the number with 1's complement of a 16-bit number if the number is logically greater ;than 7FFF in hex  
;Algorithm
;Step 1: Intialize Ptr to data1
;Step 2: Initialize counter to 10
;Step 3: Intialize BX to 700FH
;Step 4: Check if data in mmeory is lesser than BX, if lesser than or equal to 700FH - go step 6
;Step 5: Complement the contents of mem location
;Step 6: Increment pointer by 2
;Step 7: Decrement the count
;Step 8: If count is not equal to zero then go to step 4

.model tiny
.486
.data
loc1	dw  7f02h,8100h,4020h,7800h,0A100h,0B200h,2000h,8120h,0a203h,0910h
.code
.startup
		lea	si,loc1
		mov cl,10
		mov	bx,700fh
x1:		cmp	[si],bx
		jbe	x2
		not	word ptr[si]
x2:		inc	si
		inc	si
		dec cl
		jnz x1
.exit
end