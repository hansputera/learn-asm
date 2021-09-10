section .data
    teks: times 20 db 0x0
    teksLen: equ $- teks

section .text
    global _start


YES_PROC:
    mov eax, 4
    mov ebx, 1

    mov dword [teks], "Yes"
    mov ecx, teks
    mov edx, teksLen

    int 80h

    mov eax, 1
    mov ebx, 0
    int 80h

    ret
NO_PROC: 
    mov eax, 4
    mov ebx, 1

    mov dword [teks], "No"
    mov ecx, teks
    mov edx, teksLen
    int 80h

    mov eax, 1
    mov ebx, 0
    int 80h
    ret

_start:
    mov edi, 100
    mov esi, 100

    cmp edi, esi
    jle YES_PROC
    call NO_PROC