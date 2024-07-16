# Assembly-101
 
 #### Explicação últimas linhas

```asm
    MOV EAX, 60     ; syscall: exit
    XOR EDI, EDI    ; status: 0
    syscall         ; invoke syscall
```

1. MOV EAX, 60: Configura EAX para 60, que é o número da syscall exit.
2. XOR EDI, EDI: Zera EDI, preparando o código de saída 0 para a syscall.
3. syscall: Executa a syscall exit, terminando o programa com o código de saída 0.

#### Montagem

```sh
    nasm -f elf64 -o code.o code.asm
    ld code.o -o code
```

[Reference](https://www.youtube.com/watch?v=sfZUUm-7Bzc)