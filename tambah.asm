section .bss
    angka: resb 1

section .text
    global _start

tulisAngka:
    mov esi, [angka]
    add esi, '0'
    mov [angka], esi

    mov eax, 4
    mov ebx, 1
    mov ecx, angka
    mov edx, 20
    int 80h
    ret

_start:
    mov edi, 3 
    mov esi, 5
    ; 3 + 5 = 7

    add esi, edi ; hasil pertambahan akan di store ke register esi.

    mov [angka], esi
    call tulisAngka

    mov eax, 1
    mov ebx, 0
    int 80h