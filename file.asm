
.model tiny
.486
.data
loc1 db 45h, 54h, 67h
loc2 db 3 dup(?)

.code
	lea si, loc1
	mov al, []
.startup
.exit
end