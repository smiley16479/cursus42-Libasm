# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_read.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: user42 <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/20 18:02:39 by user42            #+#    #+#              #
#    Updated: 2020/07/20 18:02:41 by user42           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global ft_read
	extern my_errno
;	extern __errno_location	

ft_read:
mov rax, 0 ; et pas 3 comme je l'avais mis avnt
syscall
cmp rax, 0
jl my_errno
ret

;error:
;neg rax
;mov r8, rax
;call __errno_location
;mov rdx, rax
;mov [rdx], r8
;mov rax, -1
;ret

