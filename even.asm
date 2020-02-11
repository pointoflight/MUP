.model tiny

.data
dat db -2,-4,-5,46,23,25,48,0,-10,100
res1 db 1 dup(?)
.code
.startup

lea si, dat
lea di, res1

mov cx,10
mov bh,2

x1 : mov ax,[si]
cbw
cmp ax,0
jle x2
idiv bh
cmp ah,0
jnz x2  
mov [di], ax
x2 : inc si
inc di
dec cx
jnz x1


.exit
end