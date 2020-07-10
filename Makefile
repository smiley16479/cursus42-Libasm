# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: adtheus <adtheus@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/09 23:20:17 by adtheus           #+#    #+#              #
#    Updated: 2020/07/09 19:36:01 by adtheus          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

# LIB_DIR = $(shell find lib -type d -maxdepth 1 | grep 'lib/')
# INC_DIR = $(shell find includes -type d) $(foreach dir, $(LIB_DIR), $(shell find -f $(dir)/includes -type d))

SRC_DIR = src
OBJ_DIR = obj

SRC = 			ft_read.s	ft_strcmp.s	\
				ft_strcpy.s	ft_strdup.s	\
				ft_strlen.s	ft_write.s\
				main.s

OBJ = $(addprefix $(OBJ_DIR)/, $(SRC:%.s=%.o))

#vpath %.c $(foreach dir, $(SRC_DIR), $(dir):)

CFLAG = -f macho64

all		: $(NAME)

show	:
	@echo "SRC_DIR : $(SRC_DIR)\n"
	@echo "CFLAG : $(CFLAG)\n"
	@echo "SRC :$(foreach file, $(SRC),\n\t$(file))\n"
	@echo "OBJ :$(foreach file, $(OBJ),\n\t$(file))\n"

#@echo "LIB :$(foreach lib, $(LIB),\n\t$(lib))\n"
#LIB = ft mlx
#LFLAGS = 	$(foreach dir, $(LIB_DIR), -L $(dir) ) $(foreach lib, $(LIB), -l$(lib) ) -framework OpenGL -framework AppKit

## -c = definit les fichiers sources a compiler
## -o = change le nom du fichier d'output
## $@ = la cible de la regle
## $< = la premiere dependance de la regle
## $^ = les dependances de la regle
$(OBJ_DIR)/%.o : $(SRC_DIR)/%.s
	@mkdir -p $(OBJ_DIR)
	@nasm $(CFLAG) $(IFLAG) -c $< -o $@

$(NAME)	: $(OBJ)
	@gcc $(OBJ) $(CFLAG) $(IFLAG) $(LFLAG) -o $@


debug : $(NAME)
	@./$(NAME)

install :
#	make -C lib/libft
#	make -C lib/mlx

re-install :
#	make -C lib/libft re
#	make -C lib/mlx re

clean	:
	@rm -f $(OBJ)

fclean	: clean
	@rm -f $(NAME)

re		: fclean all
