section .text
	extern malloc
	extern ft_strlen
	extern ft_strcpy
	global ft_strdup

ft_strdup:
;mov rdx, rdi		;store string's ptr
call ft_strlen
inc rax
push rdi		;ligne ajoute le 16 juillet 12:45
mov rdi, rax
call malloc
pop rsi
mov rdi, rax
;mov rsi, rdx		;restore string's ptr in second arg for ft_strcpy
call ft_strcpy
ret

