section .data
  ; inisial data
  variabel: db "Hello world", 10
  variabelLen: equ $- variabel

section .text
  global _start

_start:
  mov eax, 4 
  mov ebx, 1 
  mov ecx, variabel ;
  mov edx, variabelLen
  int 80h 

  mov eax, 1 ;
  mov ebx, 0 
  int 80h
