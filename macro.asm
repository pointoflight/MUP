.model tiny
.486
.data
dat1 dd 0A7FFEE01h
dat2 dd 5 dup(?)
cnt1 dw 01
stack1 dw 10 dup(?)
stack2 dw ?

swap macro
lodsd
bswap eax
stosd

endm
.code
.startup
	lea si,dat1
	lea di,dat2
	mov cx,cnt1

x1 : swap 
loop x1


.exit
end	