;This program counts the number of times E occurs with B preceding it  
;Algorithm
;Step 1: Intialize Ptr to data1
;Step 2: Initialize counter to n
;Step 3: Store 'E' in al
;Step 4: Store 'B' in ah
;Step 5: Use bl to store the count of 'E' preceded by B
;Step 6: Check if data is equal to 'E'
;Step 7: If not equal to 'E' go to step 11
;Step 8: Check if data in the location before is equal to 'B'
;Step 9: If not equal to 'B' go to step 11
;Step 10: Increment bl
;Step 11: Increment Ptr
;Step 12: Decrement the count
;Step 13: If count is not equal to zero then go to step 6

.model tiny
.486
.data
data1	db	"ASEBETEBEC"
res1	db	?
.code
.startup
		lea	si,data1
		mov cl,10
		mov	al,'E'
		mov	ah,'B'
		mov	bl,0
x1:		cmp	[si],al
		jne	x2
		mov	di,si
		dec	di
		cmp	[di],ah
		jne	x2
		inc	bl
x2:		inc	si
		dec cl
		jnz x1
		mov	res1,bl
.exit
end