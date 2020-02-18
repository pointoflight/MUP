.model tiny 
.486
.data 
loc1 dw 28687, 30000, -12349, 29000, 1 , 2 , -4, -8, 29456, 34

.code 
.startup 
    lea si, loc1
    mov cx, 10
    x1: mov bx,[si]
    cmp bx,0700fh
    jg x2
    jmp x3
    ;x2: mov ax,[si]
    ;not ax
    ;mov [si],ax
    x2: not word ptr [si]
    x3: inc si
    inc si
    dec cx
    jnz x1
.exit
end
