;Pour compiler
;~$ nasm -f elf your_file.asm
;~$ ld -m elf_i386 your_file.o -o your_file
;~$ ./your_file
; 1st arg           Stack           EBX               RDI            RDI
; 2nd arg           Stack           ECX               RSI            RSI
; 3rd arg           Stack           EDX               RDX            RDX
; 4th arg           Stack           ESI               RCX            R10
; 5th arg           Stack           EDI               R8             R8
; 6th arg           Stack           EBP               R9    


SECTION .text
        global _ft_strlen

;ft_strlen(const char* = rdi)
_ft_strlen:

    mov rax, 0  ; set rax to 0
    jmp count   ; jump to count

count:
    cmp     BYTE [rdi + rax], 0 ; compare le pointeur sur le premier arg + le rax(valeur de retour) avec 0
    je      exit                ; if le pointeur sur rdi + rax = 0 then exit()
    inc     rax                 ; else rax++
    jmp     count               ; recommence


exit:
    ret                         ; return (rax)

