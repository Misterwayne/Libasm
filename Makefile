# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: truepath <truepath@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/06/25 16:19:53 by truepath          #+#    #+#              #
#    Updated: 2020/07/02 18:33:17 by truepath         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

  
NAME = libasm.a

SRCS =	ft_strlen.s \
		ft_write.s	\
		ft_strcmp.s \
		ft_strcpy.s \
		ft_read.s	\
		ft_strdup.s

OBJS = $(SRCS:.s=.o)

TFILE = asm_test.c

%.o	: %.s
	nasm -f macho64 $< -o $@

$(NAME): $(OBJS) 
	ar rcs $(NAME) $(OBJS)

all: $(NAME)
	gcc -Wall -Wextra -Werror -I./libasm.h libasm.a $(TFILE) -o test_asm

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f test_asm
	rm -f $(NAME)

re: fclean all

test: all
	./test_asm $(ARGS)