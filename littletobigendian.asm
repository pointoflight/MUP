.model tiny

.data
dat1 dw 3843h,2354h,6542h
.code
.startup
mov cx,3
lea si, dat1

x1 : mov ax, [si]
mov bh, al
mov al, ah
mov ah,bh
dec cx
jnz x1

.exit
end