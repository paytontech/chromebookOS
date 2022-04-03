[org 0x7c00]


mov ah, 0x0e ;tells bios to do scrolling teletype



mov bx, the_secret
add bx, 0x7c00
mov al, [bx]
int 0x10


the_secret:
    db "fridayOS supremacy",0


jmp $ ; loops forever


; boot stuff

times 510-($-$$) db 0 ; fill boot sector with 0s

dw 0xaa55 ; tell bios that this is an operating system

; wait what
; it was really that simple???
; well ok then
