; CMSC 313 HW#11 Mathushan Mathyvannan - section 2 Mon/Wen 10-11:15 AM
; Hex to ASCII Conversion and Print - 32-bit
; Assemble with: nasm -f elf32 -g -F dwarf -o asciiPrint.o asciiPrint.asm
; Link with: ld -m elf_i386 -o asciiPrint asciiPrint.o
; Run with: ./asciiPrint

section .data
    inputBuf: db 0x83, 0x6A, 0x88, 0xDE, 0x9A, 0xC3, 0x54, 0x9A
    countIn equ 8

section .bss
    outputBuf: resb 80

section .text
    global _start

_start:

    xor esi, esi          ; input index set to 0
    xor edi, edi          ; output index set to 0

; starts for loop that loops 8 times
.loop:
    cmp esi, countIn
    jge .print            ; jumps to print after 8 loops

    mov al, [inputBuf + esi]  ; gets current byte

    ; get the high nibble and calls asciiConvert
    and al, 0xF0
    shr al, 4
    call asciiConvert
    ; moves to AH for high hibble values
    mov ah, al

    ; get the low nibble and calls asciiConvert
    mov al, [inputBuf + esi]
    and al, 0x0F
    call asciiConvert
    ; keeps in AL for low hibble values

    ; adds both AH and AL into outputBuf
    mov [outputBuf + edi], ah
    inc edi
    mov [outputBuf + edi], al
    inc edi

    ; adds a space after the pair of characters from AX
    ; Loops only 7 times since we don't want a space at the end
    cmp esi, countIn - 1
    je .skip_space
    mov byte [outputBuf + edi], 0x20
    inc edi
.skip_space:

    ; increments esi for the for loop to run only 8 times
    inc esi
    jmp .loop

.print:
    ; add two newlines at the end
    mov byte [outputBuf + edi], 0x0A
    inc edi
    mov byte [outputBuf + edi], 0x0A
    inc edi

    ; print outputBuf to stdout
    mov eax, 4
    mov ebx, 1
    mov ecx, outputBuf
    mov edx, edi
    int 0x80

    ; exit the program
    mov eax, 1
    mov ebx, 0
    int 0x80

    ; takes in AL and converts it to ASCII equivalent
    ; +37 for letters and +30 for numbers
asciiConvert:
    cmp al, 0x0A
    jl .digit
    add al, 0x37         ; A-F
    ret
.digit:
    add al, 0x30         ; 0-9
    ret
