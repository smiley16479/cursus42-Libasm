section .text
	global	ft_strdup
	extern	ft_strlen
	extern	malloc
	extern	ft_strcpy

ft_strdup:
	call ft_strlen	; ft_strlen(s) with rdi (src) as parameter
	inc	rax	; result of ft_strlen + 1
	push rdi	; 16-byte alignment / save s address into stack
	mov rdi, rax	; update param for malloc
	call malloc	; malloc(param)
	cmp	rax, 0
	je	return	; if rax NULL, goto return
	pop rsi		; put src into rsi (2nd param)
	mov rdi, rax	; rdi = dest
	call ft_strcpy	; rdi = dest, rsi = src
	jmp	return

return:
		ret
