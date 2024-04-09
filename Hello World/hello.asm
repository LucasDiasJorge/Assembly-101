; emu8086

org 100h

jmp main 

message: db 'Hello World!', 0

print:
    mov ah, 0eh
    ._loop:
    lodsb
    cmp al, 0
    je .done
    int 100h
    jmp ._loop

.done:
    ret

main:
    mov si, message
    call print

ret