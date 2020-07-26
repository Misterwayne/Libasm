/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: truepath <truepath@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/06/25 15:57:07 by truepath          #+#    #+#             */
/*   Updated: 2020/07/02 18:18:27 by truepath         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H
# define LIBASM_H

#include <stdlib.h>
#include <string.h>
#include <stdio.h>

size_t      ft_strlen(const char *str);
ssize_t     ft_write(int stdout, const void *buff, size_t nbyte);         
int         ft_strcmp(const char* str1, const char* str2);
char        *ft_strcpy(char* dest, char* src);
ssize_t     ft_read(int stdout, void *buff, size_t nbyte);
char        *ft_strdup(const char* str);

#endif