/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: acarneir <acarneir@student.42sp.org.br>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/09/18 15:58:24 by acarneir          #+#    #+#             */
/*   Updated: 2021/09/18 15:58:24 by acarneir         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <unistd.h>
# include <stdlib.h>
# include <stdarg.h>
# include "../libft/libft.h"

int		ft_printf(const char *str, ...);
void	ft_percent_c(int arg, int *pos);
void	ft_percent_s(char *arg, int *pos);
void	ft_percent_di(int arg, int *pos);
void	ft_percent_u(unsigned int n, int *pos);
void	ft_percent_x(unsigned int n, int *pos, int is_upper);

#endif