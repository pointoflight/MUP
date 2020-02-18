.model tiny
.486
.data 
loc1 db 'A','Z','L','M','E','R','S','B','X','C'

.code 
.startup
    lea si, loc1
    mov cx,10
    x1: mov bh, [si]
    cmp bh,'L'
    ja x2
    jmp x3
    x2: sub byte ptr [si],'A'
    add byte ptr [si],'a'
    x3:inc si
    dec cx
    jnz x1
.exit
end
