org 07c00h
mov ax, cs
mov ds, ax
mov es, ax
call      DispStr
jmp $
DispStr:
    mov ax, BootMessage
    mov bp, ax
    mov cx, 16
    mov ax, 01301h
    mov bx, 0002h
    mov dl, 0
    int 10h
    ret
BootMessage:           db  "ZxpOS    By zyw"
times     510-($-$$)   db 0 
dw      0xaa55