; This program adds two 6-byte numbers
;Algorithm
;Step 1: Intialize Ptr to data1
;Step 2: Intialize Ptr to data2
;Step 3: Initialize counter to 6
;Step 4: Clear Carry
;Step 5: Move byte n from data1 from memory to reg1
;Step 5: Add data in reg1 with byte n of data2 in memory and previous carry, with result in memory
;Step 6: Increment all two pointers
;Step 7: Decrement the byte counter
;Step 8: If count is not equal to zero then go to step 5
;Step 9: Check for carry in last byte. If no carry go to program end
;Step 10: Increment the next location to indicate carry

.model tiny
.486
.data
data1	db	0fah,0efh,0abh,56h,34h,98h
data2	db	21h,10h,90h,67h,0f3h,71h,0 	
.code
.startup
		lea	si,data1
		lea di,data2
		mov cx,6
		clc
x1:		mov al,[si]
		adc [di],al
		inc	si
		inc	di
		dec cx
		jnz x1
		jnc	x2
		inc byte ptr[di]
x2:
.exit
end