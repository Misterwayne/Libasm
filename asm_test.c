/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   asm_test.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: truepath <truepath@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/06/25 15:58:58 by truepath          #+#    #+#             */
/*   Updated: 2020/07/02 18:25:48 by truepath         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

int     main(int ac, char **av)
{
    char*   message1;
    char*   message2;
    int     len;

    if (ac < 2)
        message1 = strdup("Hello World!");
    else
        message1 = av[1];
    
    message2 = ft_strdup("lol_test");

    printf("massage = %s, len = %zu\n",message1,ft_strlen(message1));
    len = ft_write(1, message2, ft_strlen(message2));

    printf("\nft_write return = %d\n",len + 1);
    printf("ft_strcmp return %d pour %s et %s\n", ft_strcmp(message1,message2), message1, message2);
    message2 = ft_strcpy(message2, message1);
    printf("str1 = %s, duplicate = %s\n","ok sa marche",ft_strdup("ok sa marche"));
    printf("ft_strcpy return (%s)\n",message2);
    ft_read(1, message2, 10);
    return(0);
}