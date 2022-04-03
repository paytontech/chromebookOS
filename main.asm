[org 0x7c00]

mov ah, 0x0e
mov bx, string

;loop:
;    inc al
;    cmp al, 'Z' + 1
;    je exit
;    int 0x10
;    jmp loop
printString:
    mov al, [bx]
    cmp al, 0
    je exit
    int 0x10
    inc bx
    jmp printString


exit:
    jmp $
string: 
    db "Wow this is pretty neato as the kids say",0

times 510-($-$$) db 0
db 0x55, 0xaa