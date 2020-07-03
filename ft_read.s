section .text
	global ft_read

ft_read:
mov rax, 3
syscall
mov rax, rdx
ret

;; Ne sais pas cmt gérer les erreurs encore
