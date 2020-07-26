section .text
        global _ft_read

_ft_read:
        mov     rax, 0x2000003 ; syscall 3 read
        syscall
        jc      error ; jump to error if the carry flag is set
        ret

error:
        mov     rax, -0x1; return if an error ocurred -1
        ret