#include <stdlib.h>
#include <unistd.h>

void		*ft_bzero(char *str, int size) __attribute__((cdecl));

int			main(void)
{
	char	*str;

	str = (char *)malloc(6);
	str[0] = 'B';
	str[1] = 'o';
	str[2] = 'y';
	str[3] = 'a';
	str[4] = 'n';
	str[5] = '\0';
	ft_bzero(str, 4);
	write(1, &str[0], 1);
	write(1, &str[1], 1);
	write(1, &str[2], 1);
	write(1, &str[3], 1);
	write(1, &str[4], 1);
	write(1, &str[5], 1);
	return (0);
}