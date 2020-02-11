.model tiny
.386
.data
array1 dd 21349873h,21345674h,33859401h,25948673h,16948472h,4857482Ah,49684933h,09684921h,0496847Ah,39584824h

.code
.startup
mov cx,10d
lea di,array1
mov ebx,[di]
add di,4

x1 : mov eax,[di]
cmp ebx,eax
jge x2
mov ebx,eax
x2 : add di,4
dec cx
jnz x1
.exit
end
