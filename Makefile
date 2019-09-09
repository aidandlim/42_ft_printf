# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dlim <dlim@student.42.fr>                  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/05/25 22:55:59 by dlim              #+#    #+#              #
#    Updated: 2019/09/02 18:58:54 by dlim             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
CFLAGS = -Wall -Wextra -Werror
SOURCE = sources/*.c resources/libft/*.c
OBJECT = objects/*.o
INCLUDE = ./includes

all: $(NAME)

$(NAME):
	@echo "\x1B[32m@DLIM's Printf Initialize!\x1B[37m"
	gcc -c $(CFLAGS) $(SOURCE) -I $(INCLUDE)
	@mkdir objects
	@mv *.o ./objects/
	@ar rc $(NAME) $(OBJECT)
	@ranlib $(NAME)
	@echo "\x1B[32mCompelete!\x1B[37m"

clean: 
	@rm -rf ./objects

fclean: clean
	@rm -f $(NAME)

re: fclean all