;Algorithm
;Step 1: Intialize Ptr to data1
;Step 2: Initialize counter to n
;Step 3: Copy data from mem to reg in this case al
;Step 4: Check if the data is below alphabet 'L'
;Step 5: If above 'L' go to step 8
;Step 6: Convert capital to small alphabet by adding 20h
;Step 7: Store the result in memory
;Step 8: Increment Ptr 
;Step 9: Decrement the count
;Step 10: If count is not equal to zero then go to step 3
.model tiny
.486
.data
loc1	db	"ASLBTTUVCC"
.code
.startup
		lea	si,loc11
		mov cl,10
x1:		mov	al,[si]
		cmp	al,'L'
		ja	x2
		add	al,20h
		mov	[si],al
x2:		inc	si
		dec cl
		jnz x1
.exit
end