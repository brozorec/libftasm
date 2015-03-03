#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>
#include <fcntl.h>
#include <ctype.h>

void		ft_bzero(char *str, int size);
char		*ft_strcat(char *s1, char *s2);
int			ft_isalpha(int c);
int			ft_isdigit(int c);
int			ft_isalnum(int c);
int			ft_isascii(int c);
int			ft_isprint(int c);
int			ft_toupper(int c);
int			ft_tolower(int c);
int 		ft_puts(char *str);
size_t 		ft_strlen(char *str);
void		*ft_memset(void	*b, int c, size_t len);
void 		*ft_memcpy(void *dst, void *src, size_t n);
char		*ft_strdup(char *str);
void		ft_cat(int fd);
void		ft_putchar(char c);
void		ft_putstr(char *str);
char		*ft_strcpy(char *dst, const char *src);
char		*ft_strchr(const char *s, int c);
char		*ft_strnew(size_t size);


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
	char	str[] = "kokoko";

	printf("original string: %s\n", str);
	put_str("after ft_bzero(str, 2): ");
	ft_bzero(str, 2);
	write(1, &str[0], 1);
	write(1, &str[1], 1);
	write(1, &str[2], 1);
	write(1, &str[3], 1);
	write(1, &str[4], 1);
	write(1, &str[5], 1);
	printf("\n\n");
}

void		test_strcat(void)
{
	// char	*s1;
	// char	*s2;

	// s1 = (char *)malloc(8 * sizeof(char));
	// s2 = (char *)malloc(4 * sizeof(char));
	// s1[0] = 'B';
	// s1[1] = 'o';
	// s1[2] = 'y';
	// s1[3] = '\0';
	// s2[0] = 'a';
	// s2[1] = 'n';
	// s2[2] = '\0';
	char	buf[9];

	bzero(buf, 9);
	ft_strcat(buf, "");
	ft_strcat(buf, "Bon");
	ft_strcat(buf, "j");
	ft_strcat(buf, "our.");
	ft_strcat(buf, "");
	// s1 = ft_strcat(s1, s2);
	printf("ft_strcat: %s\n\n", buf);
}

void		test_isalpha(void)
{
	printf("ft_isalpha: %d\n", ft_isalpha(50));
	printf("   isalpha: %d\n\n", ft_isalpha(50));
}

void		test_isdigit(void)
{
	printf("ft_isdigit: %d\n", ft_isdigit(123));
	printf("   isdigit: %d\n\n", isdigit(123));
}

void		test_isalnum(void)
{
	printf("ft_isalnum: %d\n", ft_isalnum(123));
	printf("   isalnum: %d\n\n", isalnum(123));
}

void		test_isascii(void)
{
	printf("ft_isascii: %d\n", ft_isascii(56));
	printf("   isascii: %d\n\n", isascii(56));
}

void		test_isprint(void)
{
	printf("ft_isprint: %d\n", ft_isprint(126));
	printf("   isprint: %d\n\n", isprint(126));
}

void		test_toupper(void)
{
	printf("ft_toupper: %c\n", ft_toupper(12390));
	printf("   toupper: %c\n\n", toupper(12390));
}

void		test_tolower(void)
{
	printf("ft_tolower: %c\n", ft_tolower(12390));
	printf("   tolower: %c\n\n", tolower(12390));
}

void		test_puts(void)
{
	put_str("ft_puts: ");
	ft_puts("with_nl");
	put_str("\n");
}

void		test_strlen(void)
{
	printf("ft_strlen: %d\n", (int)ft_strlen("papapa"));
	printf("   strlen: %d\n\n", (int)strlen("papapa"));
}

void		test_memset(void)
{
	char	*str1;
	char	*str2;
	int 	c;

	c = 12391;
	str1 = (char *)malloc(8 * sizeof(char));
	str1[0] = 'b';
	str1[1] = 'o';
	str1[2] = 'y';
	str1[3] = '\0';
	str2 = strdup(str1);
	str1 = ft_memset(str1, c, 1);
	printf("ft_memset: %s\n", str1);
	str2 = memset(str2, c, 1);
	printf("   memset: %s\n\n", str2);
}

void		test_memcpy(void)
{
	char	*str1;
	char	*str2;

	str1 = (char *)malloc(8 * sizeof(char));
	str2 = (char *)malloc(8 * sizeof(char));
	str1 = ft_memcpy(str1, "roro", 4);
	printf("ft_memcpy: %s\n", str1);
	str2 = ft_memcpy(str1, "roro", 4);
	printf("   memcpy: %s\n\n", str2);
}

void		test_strdup(void)
{
	char	*str1;
	char	*str2;

	str1 = ft_strdup("foo bar");
	str2 = strdup("foo bar");
	printf("ft_strdup: %s\n", str1);
	printf("   strdup: %s\n\n", str2);
}

void		test_cat(void)
{
	int 	fd;

	if ((fd = open("./ft_bzero.s", O_RDONLY)) == -1)
	{
		put_str("error open");
	}
	printf("ft_cat: \n");
	ft_cat(fd);
	close(fd);
	printf("end ft_cat.\n\n");
}

void		test_putchar(void)
{
	put_str("ft_putchar: ");
	ft_putchar('a');
	printf("\n\n");
}

void		test_putstr(void)
{
	ft_putstr("ft_putstr: bravo\n\n");
}

void		test_strcpy(void)
{
	char	*str1;
	char	*str2;

	str1 = (char *)malloc(8 * sizeof(char));
	str2 = (char *)malloc(8 * sizeof(char));
	str1 = ft_strcpy(str1, "riri");
	printf("ft_strcpy: %s\n", str1);
	str2 = strcpy(str2, "riri");
	printf("   strcpy: %s\n\n", str1);
}

void		test_strchr(void)
{
	char	*str1;
	char	*str2;

	str1 = ft_strchr("strong", 'o');
	printf("ft_strchr: %s\n", str1);
	str2 = strchr("strong", 'o');
	printf("   strchr: %s\n\n", str2);
}

void		test_strnew(void)
{
	char	*str1;

	str1 = ft_strnew(5);
	printf("ft_strnew: %s\n", str1);
}

int			main(void)
{
	test_bzero();
	test_strcat();
	test_isalpha();
	test_isalnum();
	test_isdigit();
	test_isascii();
	test_isprint();
	test_toupper();
	test_tolower();
	test_puts();
	test_strlen();
	test_memset();
	test_memcpy();
	test_strdup();
	test_cat();
	test_putchar();
	test_putstr();
	test_strcpy();
	test_strchr();
	test_strnew();
	return (0);
}












