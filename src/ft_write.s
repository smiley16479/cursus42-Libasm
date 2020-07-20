# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_write.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: user42 <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/20 16:09:22 by user42            #+#    #+#              #
#    Updated: 2020/07/20 16:09:27 by user42           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global ft_write
	extern my_errno
	extern __errno_location

ft_write:
mov rax, 1
syscall
cmp rax, 0
jl my_errno
ret

;error:
;neg rax
;mov r8, rax
;call __errno_location
;mov rbx, rax
;mov [rbx], r8
;mov rax, -1
;ret

;print:
;mov r10, rax
;add r10, 48
;push r10
;mov rax, 1
;mov rdi, 1
;mov rsi, rsp
;mov rdx, 1 
;syscall
