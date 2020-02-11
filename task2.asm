.model tiny
.386
.data
dat1 dd 9999h	
dat2 dd 9999h

.code
.startup

mov eax,dat1
add eax,dat2

.exit
end