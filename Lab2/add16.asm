.model tiny 
.486
.data 
array1 db 56h, 78h, 89h, 0Ah, 23h, 0Ah, 0Bh, 88h, 99h, 44h
count db 10

.code 
.startup
    lea si,array1
    mov cl, count
    X1:mov al,[si]
    xor al,0Ah
    jnz X2
    mov bh,"E"
    mov [si],bh
    X2: inc si
    dec cl
    jnz X1

.exit
end