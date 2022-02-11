mov ah, 0x0e ;tells bios to do scrolling teletype


; prints "WAIT IS THIS ACTUALLY WORKING" to the screen
mov al, 'W'
int 0x10
mov al, 'A'
int 0x10
mov al, 'I'
int 0x10
mov al, 'T'
int 0x10
mov al, ' '
int 0x10
mov al, 'I'
int 0x10
mov al, 'S'
int 0x10
mov al, ' '
int 0x10
mov al, 'T'
int 0x10
mov al, 'H'
int 0x10
mov al, 'I'
int 0x10
mov al, 'S'
int 0x10
mov al, ' '
int 0x10
mov al, 'W'
int 0x10
mov al, 'O'
int 0x10
mov al, 'R'
int 0x10
mov al, 'K'
int 0x10
mov al, 'I'
int 0x10
mov al, 'N'
int 0x10
mov al, 'G'
int 0x10





; boot stuff

times 510-($-$$) db 0 ; fill boot sector with 0s

dw 0xaa55 ; tell bios that this is an operating system

; wait what
; it was really that simple???
; well ok then
