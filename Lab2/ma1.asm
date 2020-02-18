;Algorithm
;Step 1: Intialize Ptr to data1
;Step 2: Initialize counter to n
;Step 3: Copy ptr to another ptr2 - in this case reg di
;Step 4: Copy data from memory to ax
;Step 5: Copy ah content in to the lower byte as pointed by di
;Step 6: Increment di
;Step 7: Copy al content in to the higher byte as pointed by di
;Step 8: Increment Ptr by 2
;Step 9: Decrement the count
;Step 10: If count is not equal to zero then go to step 3
.model tiny
.486
.data
data1	dw	2345h,8907h,4567h,0a321h,0b567h,8901h,0102h,2010h,9998h,0ffeeh
.code
.startup
		lea	si,data1
		mov cl,10
x1:		mov	di,si
		mov	ax,[si]
		mov	[di],ah
		inc	di
		mov	[di],al
		inc	si
		inc	si
		dec cl
		jnz x1
.exit
end