# Assembly-101 (Hello World)

## Description:
This project provides a simple "Hello World" program written in assembly language. It aims to introduce beginners to assembly programming concepts and demonstrate the basics of assembly code structure and syntax.

## Instructions:

### Line 7:
The instruction `jmp main` signifies the start of the program, indicating that execution should begin at the `main` label.

### Line 22 and beyond:
```assembly
main:
    mov si, message
    call print
```
Here, at the `main` label, the program moves the address of the `message` string to the `si` register and calls the `print` function to display the message.

### Line 12 and beyond:
```assembly
print:
    mov ah, 0eh
```
At the `print` label, the program sets up the `ah` register with the value `0eh`, which is a BIOS interrupt call for displaying characters.

The program then continues execution in a loop, reading each character of the message and displaying it on the screen until it encounters the null terminator (0x00) denoting the end of the string.

```assembly
._loop:
    lodsb           ; Load byte at address SI into AL and increment SI
    cmp al, 0       ; Compare AL with 0 (null terminator)
    je .done        ; If AL is 0, jump to .done
    int 10h         ; Call BIOS interrupt to display character in AL
    jmp ._loop      ; Continue looping
.done:
    ret             ; Return from the print function
```

This loop reads each character from the memory location pointed to by the `si` register, compares it with the null terminator, and displays it on the screen using BIOS interrupt 10h. Once the null terminator is encountered, the loop terminates, and the function returns.

## Usage:
To run the program, assemble and link the source file using an appropriate assembler and linker. Execute the resulting binary to see the "Hello World" message displayed on the screen.

## Resources:
- [Assembly Language Programming](https://en.wikipedia.org/wiki/Assembly_language)
- [x86 Assembly Language](https://en.wikipedia.org/wiki/X86_assembly_language)
- [Introduction to BIOS interrupts](https://en.wikipedia.org/wiki/BIOS_interrupt_call)
