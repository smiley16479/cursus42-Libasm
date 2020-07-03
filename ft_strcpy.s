section .text
	global ft_strcpy

ft_strcpy:
xor rax, rax
;cmp rdi, byte 0

func_core:
cmp [rsi + rax], byte 0 
je return
mov r8, [rsi + rax]
mov [rdi + rax], r8 
inc rax
jmp func_core

return:
;mov [rdi + rax], byte 0x0		;NULL terminated C String
mov rax, rdi
ret

