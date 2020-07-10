section .data
msg db "hello", 0
lettre db "h", 10
SYS_WRITE equ	1
SYS_EXIT	equ	60
STD_IN		equ	1

extern ft_strlen

section .text
		global _start

_start:
mov rsi, msg
;cld
call	ft_strlen

;call check

;mov rdi, rax
;mov rax, SYS_WRITE
;mov [rsi], byte 48
;add [rsi], rdi
;mov rdi, 1						;specify fd
;mov rdx, 1
;syscall
jmp	exit

exit:
mov rax, SYS_EXIT
mov rdi, 0
syscall
 
