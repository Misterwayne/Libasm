segment .text
        global _ft_strdup
        extern _ft_strlen
        extern _ft_strcpy
        extern _malloc

;ft_strdup(const char* str)
_ft_strdup:
        call    _ft_strlen  ; get len of rdi(argv0 = str)
        add     rax, 1      ; add one for the \0
        push    rdi;        ; save the addresse of the string (rdi) in the stack
        mov     rdi, rax    ; put the len of the string in rdi(arg0) for the malloc call
        call    _malloc
        pop     r9          ; get the adrress of the string in the stack in put it in r9
        mov     rsi,r9      ; put r9 in rsi(argv1) for the strcpy call(*str)
        mov     rdi,rax     ; put the alloced string(rax) in rdi(argv1) for strcpy call(malloc return's)
        call    _ft_strcpy
        ret

