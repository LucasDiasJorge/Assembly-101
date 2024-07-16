SECTION .data ; Variables
    num1        DD 30
    num2        DD 70
    num3        DD 99
    soma        DD 0
    subtracao   DD 0

SECTION .text ; Instruction
    GLOBAL _start

_start:
    MOV EAX, [num1]
    MOV EBX, [num2]
    MOV ECX, [num3]

    ADD EAX, EBX
    MOV [soma], EAX

    SUB EAX, ECX
    MOV [subtracao], EAX

    MOV EAX, 60     ; syscall: exit
    XOR EDI, EDI    ; status: 0
    syscall         ; invoke syscall
