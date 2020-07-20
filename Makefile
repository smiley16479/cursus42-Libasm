# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: adtheus <adtheus@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/09 23:20:17 by adtheus           #+#    #+#              #
#    Updated: 2020/07/20 18:23:29 by user42           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a
SRC_DIR = src
OBJ_DIR = obj

SRC = 			ft_read.s	ft_strcmp.s	\
				ft_strcpy.s	ft_strdup.s	\
				ft_strlen.s	ft_write.s\
				errno.s	

OBJ = $(addprefix $(OBJ_DIR)/, $(SRC:%.s=%.o))

#vpath %.c $(foreach dir, $(SRC_DIR), $(dir):)

CFLAG = -f elf64
#-f macho64


# ----------RECAP__DISPLAY--------- #

#@echo "LIB :$(foreach lib, $(LIB),\n\t$(lib))\n"
#LIB = ft mlx
#LFLAGS = 	$(foreach dir, $(LIB_DIR), -L $(dir) ) $(foreach lib, $(LIB), -l$(lib) ) -framework OpenGL -framework AppKit

## -c = definit les fichiers sources a compiler
## -o = change le nom du fichier d'output
## $@ = la cible de la regle
## $< = la premiere dependance de la regle
## $^ = les dependances de la regle

all		: $(NAME)

$(NAME)	: $(OBJ)
	ar rcs $@ $^ # $<

$(OBJ_DIR)/%.o : $(SRC_DIR)/%.s
	@mkdir -p $(OBJ_DIR)
	@nasm $(CFLAG) $< -o $@

clean	:
	@rm -f $(OBJ)

fclean	: clean
	@rm -f $(NAME)

re		: fclean all

show	:
	@echo "SRC_DIR : $(SRC_DIR)\n"
	@echo "OBJ_DIR : $(OBJ_DIR)\n"
	@echo "SRC :$(foreach file, $(SRC),\n\t$(file))\n"
	@echo "OBJ :$(foreach file, $(OBJ),\n\t$(file))\n"
	@echo "CFLAG : $(CFLAG)\n"
