/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_getdigit.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dlim <dlim@student.42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/05/01 21:35:57 by dlim              #+#    #+#             */
/*   Updated: 2019/08/31 21:11:04 by dlim             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "stdio.h"

int	ft_getdigit(long long int n)
{
	int i;

	i = 1;
	while (n /= 10)
		i++;
	return (i);
}