/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfts.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bbarakov <bbarakov@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/02/28 16:33:19 by bbarakov          #+#    #+#             */
/*   Updated: 2015/03/01 18:49:59 by bbarakov         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTS_H
# define LIBFTS_H

void		*ft_bzero(char *str, int size);
char		*ft_strcat(char *s1, char *s2);
int			ft_isalpha(int c);
int			ft_isdigit(int c);
int			ft_isalnum(int c);
int			ft_isascii(int c);
int			ft_isprint(int c);
int			ft_toupper(int c);
int			ft_tolower(int c);
int 		ft_puts(char *str);
size_t 		ft_strlen(const char *str);
void		*ft_memset(void	*b, int c, size_t len);
void 		*ft_memcpy(void *dst, const void *src, size_t n);
char		*ft_strdup(const char *str);

#endif
