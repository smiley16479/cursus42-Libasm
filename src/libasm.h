/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: user42 <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/07/20 16:11:01 by user42            #+#    #+#             */
/*   Updated: 2020/07/20 16:24:00 by user42           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H
# define LIBASM_H

size_t	ft_strlen(const char *str);
char	*ft_strcpy(char *dest, const char *str);
int		ft_strcmp(char *dest, const char *str);
ssize_t	ft_write(int fd, const void *str, size_t count);
size_t	ft_read(int fd, void *str, size_t count);
char	*ft_strdup(const char* s);

#endif
