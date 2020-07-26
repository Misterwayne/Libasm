segment .text
        global _ft_strcmp

;ft_strcmp(const void* = rdi,const void* = rsi)
_ft_strcmp:
        mov     rax,0       ;set the return value to zero
        jmp    compare      ;jump a la function compare

compare:
        mov     al, BYTE [rdi] ; get the LSB of the first char of the first string
        mov     bl, BYTE [rsi] ; get the LSB of the first char of the second string
        cmp     al,0           ; check if we are at the and of the string 1 (al = 0 == str1[i] = 0)
        je      exit           ; if al = 0 jump to exit
        cmp     bl,0           ; check if we are at the and of the string 2 (bl = 0 == str2[i] = 0)
        je      exit
        cmp     al,bl          ; compare al et bl (*str1,*str2)
        jne     exit               ; if the result is != 0 jump to exit
        inc     rdi            ; str1++
        inc     rsi            ; str2++
        jmp     compare        ; do it again

exit:
        movzx     rax,al       ; movzx = copy a register of inferior size in a bigger and fill the other bits with 0, and this register is rax
        movzx     rbx,bl       ; same
        sub       rax,rbx      ; put the difference beetween *str1 et *str2 qui sont stocker dans rax et rbx dans rax
        ret                    ; retourn rax