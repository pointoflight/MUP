.model tiny 

.data

var1 db 100 dup('$')

.code
.startup

lea si,var1
mov cx,100

l1 : 

mov ah,1
int 21h
cmp al, 0dh
je progend
mov [si],al
inc si

loop l1


progend : 
mov al,0Ah
mov [si],al
lea dx,var1
mov ah,9
int 21h

.exit
end
