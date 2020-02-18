.model tiny
.486
.data 
data1 db 'A','B','E','F','B','C','B','E','D','E'
res1 dw ?

.code 
.startup 
    lea si,data1
    mov cx,0
    mov ax,10
    x1: mov bh,[si]
    cmp bh,'E'
    je x2
    jmp x3
    x2: dec si
    mov bl,[si]
    cmp bl,'B'
    je x4
    inc si
    jmp x3
    x4: inc si
    inc cx
    x3: inc si
    dec ax
    jnz x1
    mov res1,cx
.exit
end