# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ntan <ntan@student.42.fr>                  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/12/10 14:33:36 by ntan              #+#    #+#              #
#    Updated: 2023/05/14 20:53:34 by ntan             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS			=	ft_printf.c print_functions_csdxp.c putnbr_functions.c \
					print_functions_upercent.c write_functions.c
OBJS			= 	$(SRCS:.c=.o)

CC				= 	gcc
RM				= 	rm -f
CFLAGS			= 	-Wall -Wextra -Werror
NAME			= 	libftprintf.a

.c.o:
				$(CC) $(CFLAGS) -I. -c $< -o $(<:.c=.o)

all:			$(NAME)

$(NAME):		$(OBJS)
				ar rcs $(NAME) $(OBJS)
				$(CC) main.c libftprintf.a -o printf

clean:
				$(RM) $(OBJS)

fclean:			clean
				$(RM) $(NAME) printf

re:				fclean all
