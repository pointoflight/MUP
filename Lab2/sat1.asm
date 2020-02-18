;This program finds the number of times the string "hell" is stored in memory
;Algorithm
;Step 1: Intialize Ptr to data1
;Step 2: Initialize counter to n
;Step 3: Intialize bl to '0' - bl reg is used to store the count of how many times 'hell' occured
;Step 4: Store the data "lleh" in eax
;Step 5: Compare the data in first 4 locations with eax
;Step 6: If data in mem is not equal to eax go step 8 
;Step 7: Increment bl
;Step 8: Increment pointer by 4
;Step 9: Decrement the count
;Step 10: If count is not equal to zero then go to step 5
;Step 11: Store bl in res1

.model tiny
.486
.data
data1	db	"mpii", "hell", "lleh", "viva", "hell"
res1	db	?

.code
.startup
		lea	si,data1
		mov cl,5
		mov	bl,0
		mov	eax,"lleh"
x1:		cmp eax,[si]
		jnz	x2
		inc	bl
x2:		inc	si
		inc	si
		inc	si
		inc	si
		dec cl
		jnz x1
		mov	res1,bl
.exit
end