

.model tiny
.486
.data 
array1 dw -1,-2,3,4,5,6,-7,8,9,-10,-11,-12
count db 12
ans dw 0
.code 
.startup
    lea si,array1
    mov cl,count
    mov bx, ans
    X1: mov ax, [si]
    and ax, 8000h
    jnz X2
    jmp X3
    X2: inc bx
    X3: inc si
    inc si
    dec cl
    jnz X1
    mov ans,bx
.exit
end