section .data
    ; inisial
    teks times 100 db 0x0
    teksLen: equ $- teks

section .text
    global _start

_start:
    mov eax, 4
    mov ebx, 1

    mov dword [teks], "Hell"
    mov dword [teks + 4], "o Wo"
    mov dword [teks + 8], "rld"
    
    mov ecx, teks
    mov edx, teksLen
    int 80h

    mov eax, 1
    mov ebx, 0
    int 80h