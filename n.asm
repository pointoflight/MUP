.model tiny

.data

init db "Enter User Name $"
username db "pointlight$"

pass db "Enter Password $"

password db "hellobro"

hey db "Hello $"

enteruser db 10 dup('$')
enterpass db 8 dup('$')

.code
.startup

lea dx, init
mov ah,9
int 21h
mov dl,0Ah
mov ah,02h
int 21h

lea dx,enteruser
mov ah,0Ah
int 21h

mov ah,01

lea si,username
lea di,enteruser
mov cx,10

x1 : 
mov dx,[di]
cmp [si],dx
jz x2
mov ah,0
x2 : inc si
inc di
loop x1

cmp ah,0
jz incorrectusername

lea dx, pass
mov ah,9
int 21h
mov dl,0Ah
mov ah,02h
int 21h

lea dx,enterpass
mov ah,0Ah
int 21h

mov ah,01

lea si,password
lea di,enterpass
mov cx,8

x5 : 
mov dx,[di]
cmp [si],dx
jz x6
mov ah,0
x6 : inc si
inc di
loop x5

cmp ah,0
jz incorrectusername

lea dx, hey
mov ah,9
int 21h

lea dx, username
mov ah,9
int 21h
 mov dl,0Ah
mov ah,02h
int 21h

incorrectusername : 

.exit
end