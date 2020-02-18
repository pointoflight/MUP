.model tiny
.486
.data

dat1 dd 0A7FFEE01h, 12345678h,9ABCDEF0h
dat2 dd 3 dup(?)
cnt1 dw 03

bigen macro

lodsd 
bswap eax
stosd

endm
.code
.startup

mov cx,cnt1
lea si,dat1
lea di, dat2

x1 : bigen
loop x1


.exit
end