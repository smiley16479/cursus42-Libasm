section .text
	extern malloc
	extern ft_strlen
	extern ft_strcpy
	global ft_strdup

ft_strdup:
call ft_strlen
mov rcx, rax		;store string's length 
inc rax
mov rdx, rdi		;store string's ptr
mov rdi, rax
call malloc
mov rdi, rax
call ft_strcpy
ret

