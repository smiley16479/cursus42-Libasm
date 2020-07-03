section .text
	global ft_strcmp

ft_strcmp:
xor rax, rax

func_core:
mov rdx, [rdi + rax]
mov	rcx, [rsi + rax] 
cmp rdx, rcx
jne return
;cmp rdx, 0     ;évite un overflow 
;je return			;ms semble inutile
inc rax

return:
sub rdx, rcx
mov rax, rdx

;mov	rdi, rax	;check print le nombre
;call print			;qd il est positif..:/
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
