.model tiny

.data

loc1 db 12,13,-5,36
res1 db 10 dup (?)
.code
.startup

mov cx,4
lea si, loc1
lea di, res1
x1 : mov al, [si]
mov dl,[si] 
cbw
cmp ax,0
jle x2 
mov bh,2
div bh
cmp ah,0
jnz x2
mov [di], dl
inc di
x2 : inc si
dec cx
jnz x1

.exit
end