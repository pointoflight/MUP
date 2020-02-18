;This program finds the number of occurances of even postive number
;Algorithm
;Step 1: Intialize Ptr to data1
;Step 2: Initialize counter to n
;Step 3: Intialize bl to '0' - bl reg is used to store the count of even +ve numbers
;Step 4: Store the mask 1000 0001b in al
;Step 5: move data from mem temporarily into dl
;Step 6: and data in dl with mask
;Step 7: If result not equal to 0 go step 9
;Step 8: Increment bl
;Step 9: Increment pointer 
;Step 10: Decrement the count
;Step 11: If count is not equal to zero then go to step 5
;Step 12: Store bl in res1

.model tiny
.486
.data
data1	db	-8,8,7,-7,126,-2,-3,24,-24,1
res1	db	?

.code
.startup
		lea	si,data1
		mov cl,10
		mov	bl,0
		mov	al,10000001b
x1:		mov	dl,[si]
		and dl,al
		jnz	x2
		inc	bl
x2:		inc	si
		dec cl
		jnz x1
		mov	res1,bl
.exit
end