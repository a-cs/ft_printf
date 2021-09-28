# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: acarneir <acarneir@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/09/18 15:53:37 by acarneir          #+#    #+#              #
#    Updated: 2021/09/18 15:53:37 by acarneir         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME = libftprintf.a

CC = gcc

FLAGS = -Wall -Wextra -Werror

LIBFT_DIR = ./libft
LIBFT = $(LIBFT_DIR)/libft.a

INCLUDE_DIR = ./include
INCLUDE = -I $(INCLUDE_DIR)

SRC_DIR = ./src
SRCS = ft_printf.c \
		ft_percent_c.c \
		ft_percent_s.c \
		ft_percent_di.c \
		ft_percent_u.c \
		ft_percent_x.c \

OBJ_DIR = ./objs
OBJS := $(addprefix $(OBJ_DIR)/,$(SRCS:.c=.o))
SRCS := $(addprefix $(SRC_DIR)/,$(SRCS))


all: $(NAME)

$(NAME): $(LIBFT) $(OBJS)
	cp $(LIBFT) $(NAME)
	ar -rcs $(NAME) $(OBJS)

$(LIBFT):
	make -C ./libft

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	mkdir -p $(OBJ_DIR)
	$(CC) $(FLAGS) $(INCLUDE) -c $< -o $@

clean: 
	make clean -C ./libft
	rm -rf $(OBJ_DIR)

fclean: clean
	make fclean -C ./libft
	rm -rf $(NAME)

re : fclean all
