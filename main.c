/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: user42 <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/07/20 18:01:26 by user42            #+#    #+#             */
/*   Updated: 2020/07/20 18:22:12 by user42           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <errno.h>

#include "libasm.h"

int main(void)
{
	int fd =  open("essai.txt", O_RDWR);
	char str[10]  = {'a', 'b', 'c', 'd', '1'};
	char str1[10] = {'a', 'b', 'c', 'd', '1'};
	str[6]  = '0';
	str1[6] = '1';
	char dest[40];
	char dest1[40];

	printf("/***** TEST POUR FT_STRLEN *****/\n");
	printf("ft_strlen	: %lu\n", ft_strlen("1234"));
	printf("strlen		: %lu\n", strlen("1234"));
	
	printf("\n/***** TEST POUR FT_STRCPY	*****/\n");
	ft_strcpy(dest, str);
	strcpy(dest1, str);
	printf("ft_strcpy	: dest : %s ~ str : %s\n", dest, str);
	printf("strcpy		: dest : %s ~ str : %s\n", dest1, str);

	printf("\n/***** TEST POUR FT_STRCMP *****/\n");
	printf("ft_cmp_ret : %d\n", ft_strcmp(str, str1));
	printf("strcmp_ret : %d\n", strcmp(str, str1));
    
	printf("\n/***** TEST POUR FT_WRITE *****/\n");
	printf(" <-- lb_write: %zd, et errno : %d\n", write(1, str1, 5), errno);
	printf(" <-- ft_write: %zd, et errno : %d\n", ft_write(1, str1, 5), errno);

	printf("\n/***** TEST POUR FT_READ *****/\n");
	char st[10] = {0}, s[10] = {0};
	printf("ft_read			: %zd\n",ft_read(fd, st, 2));
	printf("value of errno	: %d and fd : %d, str: %s\n",errno, fd, st);
	printf("of_read			: %zd\n",read(fd, s, 2));
	printf("value of errno	: %d and fd : %d, str: %s\n",errno, fd, s);

	printf("\n/***** TEST POUR FT_STRDUP *****/\n");
	char *str_ptr;
	str_ptr =  ft_strdup(str);
	printf("ft_strdup	: %s, et errno %d\n",str_ptr, errno);
	str_ptr =  strdup(str);
	printf("of_strdup	: %s, et errno %d\n",str_ptr, errno);

	return (0);
}



