segment .text
        global _ft_write

;ft_write(int stdout = rdi, char * msg = rsi, int msg_len = rdx)
_ft_write:
        mov r8, rdx             ; save msg_len dans r8
        mov rax, 0x2000004      ; set the syscall to 4 = write
        syscall                 ; call the write syscall
        jc error                ; if CarryFlag = 1(CF=1) jump a la fonction exit error
        jmp exit                ; else jump to exit

error:
        mov rax, -1             ; range -1 dans le registre de retour(rax)
        ret                     ; retourn rax

exit:
        mov rax, r8             ; range msg_len(r8) dans rax
        ret                     ; retourn rax(msg_len)