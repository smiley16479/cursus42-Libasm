# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    errno.s                                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: user42 <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/20 16:09:01 by user42            #+#    #+#              #
#    Updated: 2020/07/20 16:10:22 by user42           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global my_errno
	extern __errno_location

my_errno:
neg rax
mov r8, rax
call __errno_location
mov rdx, rax
mov [rdx], r8
mov rax, -1
ret
