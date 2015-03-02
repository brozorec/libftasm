#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <fcntl.h>
#include "libfts.h"

// void		*ft_bzero(char *str, int size);
// char		*ft_strcat(char *s1, char *s2);
// int			ft_isalpha(int c);
// int			ft_isdigit(int c);
// int			ft_isalnum(int c);
// int			ft_isascii(int c);
// int			ft_isprint(int c);
// int			ft_toupper(int c);
// int			ft_tolower(int c);

void		put_str(char *str)
{
	int			i;

	i = 0;
	while (str && str[i])
	{
		write(1, &str[i], 1);
		++i;
	}
}

void		test_bzero(void)
{
	char	str[] = "Boyan\0";

	// str = (char *)malloc(6);
	// str[0] = 'B';
	// str[1] = 'o';
	// str[2] = 'y';
	// str[3] = 'a';
	// str[4] = 'n';
	// str[5] = '\0';
	ft_bzero(str, 2);
	write(1, &str[0], 1);
	write(1, &str[1], 1);
	write(1, &str[2], 1);
	write(1, &str[3], 1);
	write(1, &str[4], 1);
	write(1, &str[5], 1);
}

void		test_strcat(void)
{
	char	*s1;
	char	*s2;

	s1 = (char *)malloc(8 * sizeof(char));
	s2 = (char *)malloc(4 * sizeof(char));
	s1[0] = 'B';
	s1[1] = 'o';
	s1[2] = 'y';
	s1[3] = '\0';
	s2[0] = 'a';
	s2[1] = 'n';
	s2[2] = '\0';
	// s1[4] = '\0';
	s1 = ft_strcat(s1, s2);
	put_str(s1);
}

void		test_isalpha(void)
{
	printf("%d\n", ft_isalpha(50));
	// printf("%d\n", isalpha('A'));
}

void		test_isalnum(void)
{
	printf("%d\n", ft_isalnum(123));
}

void		test_isascii(void)
{
	printf("%d\n", ft_isascii(56));
}

void		test_isprint(void)
{
	printf("%d\n", ft_isprint(126));
}

void		test_toupper(void)
{
	printf("%c\n", ft_toupper(12390));
}

void		test_tolower(void)
{
	printf("%c\n", ft_tolower(12390));
}

void		test_puts(void)
{
	char	*str;

	str = (char *)malloc(8 * sizeof(char));
	str[0] = '0';
	str[1] = 'o';
	str[2] = 'y';
	str[3] = '\0';
	// str = 0;
	ft_puts(str);
	// printf("%d\n", ft_puts(str));
}

void		test_strlen(void)
{
	char	*str;

	str = (char *)malloc(8 * sizeof(char));
	str[0] = 'b';
	str[1] = 'o';
	str[2] = 'y';
	str[3] = '\0';
	// str = 0;
	// ft_strlen(str);
	printf("%d\n", (int)ft_strlen(str));
}

void		test_memset(void)
{
	char	*str;
	int 	c;

	c = 12391;
	str = (char *)malloc(8 * sizeof(char));
	str[0] = 'b';
	str[1] = 'o';
	str[2] = 'y';
	str[3] = '\0';
	str = ft_memset(str, c, 2);
	put_str(str);
}

void		test_memcpy(void)
{
	char	*str1;
	char	*str2;

	str1 = (char *)malloc(8 * sizeof(char));
	str2 = (char *)malloc(8 * sizeof(char));
	// str1[0] = 'b';
	// str1[1] = 'o';
	// str1[2] = 'y';
	// str1[3] = '\0';
	str2[0] = 'k';
	str2[1] = 'a';
	str2[2] = 's';
	str2[3] = 'p';
	str2[4] = '\0';
	// str = 0;
	str1 = ft_memcpy(str1, str2, 4);
	put_str(str1);
}

void		test_strdup(void)
{
	char	*str1;
	char	*str2;

	str1 = (char *)malloc(10 * sizeof(char));
	str1[0] = 'o';
	str1[1] = 'o';
	str1[2] = 'o';
	str1[3] = 'a';
	str1[4] = 's';
	str1[5] = 't';
	str1[6] = 'w';
	str1[7] = 'i';
	str1[8] = 'o';
	str1[9] = '\0';
	str2 = ft_strdup(str1);
	// printf("%s\n", str2);
	put_str(str2);
}

void		test_cat(void)
{
	// int 	fd;

	// if ((fd = open("./scratch", O_RDONLY)) == -1)
	// {
	// 	put_str("error open");
	// }
	// ft_cat(0);
	// close(fd);
	char	buff[2098];

	read(1, buff, 100);
	write(1, buff, 100);
}

int			main(void)
{
	// test_bzero();
	// test_strcat();
	// test_isalpha();
	// test_isalnum();
	// test_isascii();
	// test_isprint();
	// test_toupper();
	// test_tolower();
	// test_puts();
	// test_strlen();
	// test_memset();
	// test_memcpy();
	// test_strdup();
	test_cat();
	return (0);
}












