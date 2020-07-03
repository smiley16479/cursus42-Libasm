section .data
msg db "hello", 0
lettre db "h", 10
SYS_WRITE equ	1
SYS_EXIT	equ	60
STD_IN		equ	1

section .text
global _start

_start:
mov rsi, msg
;cld
call	ft_strlen

;call check

mov rdi, rax
mov rax, SYS_WRITE
;add rdi, 48  ; <-- le segfault est là

mov [rsi], byte 48
add [rsi], rdi
mov rdi, 1						;specify fd
mov rdx, 1
syscall
jmp	exit

ft_strlen:
xor rax, rax

loop:
cmp [rsi + rax], byte 0
je 	return
inc rax
jmp loop

return:
ret

exit:
mov rax, SYS_EXIT
mov rdi, 0
syscall
 
check:
mov rax, SYS_WRITE		;specify type of syscall
mov rdi, 1						;specify fd
mov rsi, lettre				;specify ptr
mov rdx, 1						;specify nb of byte to print
syscall
ret


;ajout 

int_to_str:
mov rdx, 0
mov rbx, 10
div rbx
add rdx, 48
add rdx, 0x0
push rdx
inc r12
cmp rax, 0x0
jne int_to_str
jmp print

print:
;;;; calculate number length
mov rax, 1
mul r12
mov r12, 8
mul r12
mov rdx, rax

;;;; print sum
mov rax, SYS_WRITE
mov rdi, STD_IN
mov rsi, rsp
;; call sys_write
syscall

jmp exit

