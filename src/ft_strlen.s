section .text
global ft_strlen

ft_strlen:
xor rax, rax

loop:
cmp [rdi + rax], byte 0
je 	return
inc rax
jmp loop

return:
;mov rdi, rax
;mov rax,	1 					; call system_write 
;mov [rsi], byte 48
;add [rsi], rdi
;mov rdi, 1						;specify fd
;mov rdx, 1
;syscall
ret
