; This program finds the largest of n 16-bit mumbers
;Algorithm
;Step 1: Intialize Ptr to data1
;Step 2: Initialize counter to n-1
;Step 3: Move 1st data from memory to reg1
;Step 4: Increment Pointer by 2
;Step 5: Compare data in reg1 with data in memory
;Step 6: If the data in reg1 is higher than are equal to data in memory go step 8
;Step 7: Move the data from memory to reg1
;Step 8: Increment pointer by 2
;Step 9: Decrement count
;Step 10: If count is not equal to zero then go to step 5
;Step 11: IMove the result from reg1 to result location

.model tiny
.486
.data
data1	dd	1234h,7890h,0f0f0h,0789h,0abcdh
res1	dd	?

.code
.startup
		lea	ebx,data1
		mov cl,4
		mov	eax,[ebx]
		inc ebx
		inc ebx
x1:		cmp eax,[ebx]
		jae	x2
		mov	eax,[ebx]
x2:		inc	ebx
		inc	ebx
		dec cl
		jnz x1
		mov res1,eax
.exit
end