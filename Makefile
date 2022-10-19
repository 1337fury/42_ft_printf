NAME = libftprintf.a

CC = gcc

CFLAGS = -Wall -Wextra -Werror

AR = ar

ARFLAGS = -rcs

RM = rm

RMFLAGS = -f

SRC = \
./ft_printf.c \
./ft_putstr.c \
./ft_putchar.c \
./ft_pformat.c \
./ft_putnbr.c \
./ft_putunsigned.c \
./ft_put_hexa.c \
./ft_putsign.c \
./ft_putptr.c \

OBJECTS = $(SRC:.c=.o)

all : $(NAME)

%.o : %.c
	$(CC) -c $< -o $@

$(NAME) : $(OBJECTS)
	$(AR) $(ARFLAGS) $@ $^

clean : 
	$(RM) $(RMFLAGS) $(OBJECTS)

fclean : clean
	$(RM) $(RMFLAGS) $(NAME)

re : fclean all

.PHONY : all clean fclean re


