# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcmp.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: user42 <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/20 18:03:01 by user42            #+#    #+#              #
#    Updated: 2020/07/20 18:03:02 by user42           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global ft_strcmp

ft_strcmp:
xor rax, rax

loop:
movzx rdx,byte [rdi + rax]
movzx rcx,byte [rsi + rax] 
cmp rdx, rcx
jne return
cmp rdx, 0     ;avoid overflow if strings == 
je return		
inc rax
jmp loop

return:
sub rdx, rcx
mov rax, rdx
ret

;print:
;mov r10, rax
;add r10, 48
;;push r10
;mov rax, 1
;mov rdi, 1
;mov rsi, rsp
;mov rdx, 1 
;syscall
;;pop rax
;ret
;
;equal:
;;push rax
;mov rax, 1
;mov rdi, 1
;mov rsi, yes
;;pop 
;syscall
;jmp return
;
;
;not_equal:
;mov rax, 1
;mov rdi, 1
;mov rsi, no 
;syscall
;jmp return
;
;
;section .data
;yes: db 'equal', 10, 0
;no: db 'not_equal', 10, 0
