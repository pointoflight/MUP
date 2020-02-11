.model tiny
.486

.data

array db 3,4,1,-1,2,-10,2sdxe

.code
.startup
mov cx,0606h

x2 : lea si,array

x3 : mov al,[si]
mov bl,[si+1h]
cmp al,bl
jle x1
mov [si],bl
mov [si+1h],al
x1 : inc si
dec cl
jnz x3
mov cl,06h
dec ch
jnz x2

.exit
end
