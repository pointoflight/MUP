.model tiny
.486
.data
dat1 db 'A','b','C','d'
cnt1 db 04

swap macro

cmp ah,'a'
jl x1
cmp ah,'z'
jg x1
sub ah,20h
mov [si],ah
x1 : 
endm
.code
.startup
	lea si,dat1
	mov cx,4


x2 : mov ah,[si]
swap
inc si
dec cx
jnz x2
.exit
end	