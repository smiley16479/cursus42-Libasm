#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

size_t ft_strlen(const char *str);
char* ft_strcpy(char *dest, const char *str);
int		ft_strcmp(char *dest, const char *str);
size_t	ft_write(int fd, const void *str, size_t count);
size_t	ft_read(int fd, const void *str, size_t count);
size_t func(void);
char *ft_strdup(const char* s);

int main(void)
{
	int fd = open("essai.txt", O_RDONLY);
	char str1[10] = {'a', 'b', 'c', 'd', '\n'};
	char str[10]  = {'a', 'b', 'c', 'd'};
	str1[5] = '1';
	str[5] = '0';
	char dest[40];
//		int a;
//		a = ft_strlen("1234");
//		printf("\n%d\n",a);
	//	ft_strcpy(dest, str);
	//	int	i = -1;
	//	while (dest[++i])
	//		write(1, &(dest[i]), 1);

	//	printf("cmp_ret : %d\n", ft_strcmp(str, str1));

//
//		POUR WRITE AND READ 
//

	//	ft_write(1, str1, 5);
	//	int read_ret = ft_read(fd, str, 5);
	//	printf("%d, str : %s\n",read_ret,  str);
	//ft_strcmp(str, str1);

	//	printf("%d\n", func());
	char *str_ptr;
	str_ptr =  ft_strdup(str);
	printf("%s\n",str_ptr);

	return (0);
}



