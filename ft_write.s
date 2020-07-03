section .text
	global ft_write

ft_write:
mov rax, 1
syscall
;mov rax, rdx
ret

print:
mov r10, rax
add r10, 48
push r10
mov rax, 1
mov rdi, 1
mov rsi, rsp
mov rdx, 1 
syscall
