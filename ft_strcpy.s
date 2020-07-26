segment .text
        global _ft_strcpy

;ft_str_cpy(const void* dest, const src* str2)
_ft_strcpy:
        mov     rcx,0      ;set the i to 0 
        jmp     copy        ;jump to the copy function

copy:

        ; push 	rdi			; to save it on the top of the stack
	    ; mov 	rdi, rsi	; move rdi to rsi
	    ; call 	_ft_strlen 	; call ft_strlen, result is stock in rax
	    ; mov 	rcx, rax	; move rax dans rcx because rcx used by rep after
	    ; pop 	rdi			; get rdi from the top of the stack
	    ; cld					; clear flag DF (security) DF = 0 = increment for rep, DF = 1 = decrement for rep
	    ; mov 	rax, rdi	; set return is the first adresse of rdi
	    ; rep 	movsb			; movsb get string from rsi and set it to rdi at rep, rep incres automaticaly until rsi on movsb is'nt 0 
	    ; mov 	BYTE [rdi], 0	; rdi was increse by movsb, so we are at end of the copied string
	    ; jmp 	exit
        mov     dl, BYTE[rsi + rcx]   ; get the first char of the src string into dl
        mov     BYTE[rdi + rcx], dl   ; copy dl into dest* + i
        cmp     dl,0            ; if src* = \0
        je      exit            ; exit
        inc     rcx             ; i++
        jmp     copy            ; loop back to the top

exit:
        mov     rax, rdi      ; put a 0 at the end of the string
        ret                     ; return rax