.model tiny
.486
.data

dat1 dd 0A7FFEE01h, 12345678h,9ABCDEF0h
dat2 dd 3 dup(?)
cnt1 dw 03

.code
.startup

lea si,dat1
lea di,dat2
mov cx,cnt1
x1 : call bigen

loop x1

.exit

bigen proc near 

lodsd
bswap eax
stosd

ret
bigen endp 
end