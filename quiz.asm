.Model Tiny
.486
.DATA
 
.CODE
.STARTUP
mov ax,3000h
mov sp,ax
mov ax,0250h
mov si,ax
mov bx,2345h
mov ax,0231h
push ax
popf
mov ax,6789h

push ax
push bx
pushf
push 0987h
push di
push si
pop ax
pop bx
popf 
pop di
pop [si]
.EXIT 
END