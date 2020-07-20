# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: user42 <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/20 18:01:47 by user42            #+#    #+#              #
#    Updated: 2020/07/20 18:01:50 by user42           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	extern malloc
	extern ft_strlen
	extern ft_strcpy
	extern my_errno 
	global ft_strdup

ft_strdup:
call ft_strlen
inc rax			
push rdi		;car les fct de la lib C semblent prendre leurs arg sur la stack
mov rdi, rax
call malloc
cmp rax, 0
je my_errno
pop rsi
mov rdi, rax
call ft_strcpy
ret
