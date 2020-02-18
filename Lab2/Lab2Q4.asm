.model tiny
.486
.data 
array1 dw -1,-4,5,-3,-7,5,-9,6,-4
count dw 10
neg1 dw ?

.code 
.startup
    lea si,array1
    mov cx,count
    mov bx,0
    X1: mov ax,[si]
    and ax,8000h
    jnz X2
    jmp X3
    X2: inc bx
    X3: inc si
    inc si
    dec cl
    jnz X1
    mov neg1,bx
.exit
end
    
   

