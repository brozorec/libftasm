# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bbarakov <bbarakov@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/02/28 15:50:06 by bbarakov          #+#    #+#              #
#    Updated: 2015/02/28 18:24:23 by bbarakov         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME=	libfts.a

SRC=	ft_bzero.s \
		ft_strcat.s \
		ft_isalpha.s \
		ft_isdigit.s \
		ft_isalnum.s \
		ft_isascii.s \
		ft_isprint.s \
		ft_toupper.s \
		ft_tolower.s \
		ft_puts.s \
		ft_strlen.s \

OBJ=	$(SRC:.s=.o)

all: $(NAME)
	@gcc -g -Wall -Wextra -Werror main.c -L. -lfts && ./a.out

$(NAME): $(OBJ)
	@ar rc $@ $^

%.o: %.s
	@nasm -f macho64 -o $@ $^

clean:
	@rm -f $(OBJ)

fclean: clean
	@rm -f $(NAME)

re: fclean all
