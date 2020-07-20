section .text
		global _start

_start:
	mov rax, sys_write
	mov rsi, msg
	jmp print_msg

print_msg:
	cmp [rsi], byte 0
	je exitFromRoutine
	mov rdi, std_out
	mov rdx, 1 ; nb de char à lire
	syscall
	inc rsi
	jmp print_msg

exitFromRoutine: 
	mov rax, sys_exit
	mov rdi, exit_code
	syscall

;	ft_strlen:
;		cmp byte [rsi]

section .data
	sys_write equ 1
	std_out		equ 1
	sys_exit	equ 60
	exit_code equ 0

	new_line db 0xa
	msg  db "Hello world!"

