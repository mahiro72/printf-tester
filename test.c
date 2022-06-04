/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: myoshie <myoshie@student.42tokyo.jp>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/06/05 00:24:15 by myoshie           #+#    #+#             */
/*   Updated: 2022/06/05 00:27:15 by myoshie          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */


#include <stdio.h>
#include "ft_printf.h"


#ifdef FT_PRINTF
# define F(...) ft_printf(__VA_ARGS__);
#else
# define F(...) printf(__VA_ARGS__);
#endif


int	main(void)
{
	// Basic test
	F("hello world!");
	return (0);
}