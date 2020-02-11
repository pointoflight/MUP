.model tiny
.data
array1 db 0Ah,21h,31h,23h,12h,0Ah,23h,21h,0Ah,24h

.code
.startup
mov cx,10d
lea di,array1
mov bh,'E'
x1 : mov al,[di]
cmp al,0Ah
jne x2
mov [di],bh
x2 : inc di
dec cx
jnz x1
.exit
end
