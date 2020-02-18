.model tiny 
.486
.data 
array1 dd 1000234h, 56789123h, 88888990h, 0FFFFFFFFh
count db 4
res dd ?

.code 
.startup
    lea si,array1
    mov cl, count
    mov eax, [si]
    inc si
    inc si
    inc si
    inc si

    X2:cmp eax, [si]
    jae X1
    mov eax, [si]
    X1: inc si
    inc si
    inc si
    inc si
    dec cl
    jnz X2
    mov res, eax

.exit
end

    