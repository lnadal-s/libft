SRCS = ./ft_strdup.c ./ft_atoi.c ./ft_bzero.c ./ft_calloc.c ./ft_isalnum.c ./ft_isalpha.c ./ft_isascii.c ./ft_isdigit.c ./ft_isprint.c ./ft_memccpy.c ./ft_memchr.c ./ft_memcmp.c ./ft_memcpy.c ./ft_memmove.c ./ft_memset.c ./ft_strchr.c ./ft_strlcat.c ./ft_strlcpy.c ./ft_strlen.c ./ft_strncmp.c ./ft_strnstr.c ./ft_strrchr.c ./ft_tolower.c ./ft_toupper.c	./ft_itoa.c ./ft_putchar_fd.c ./ft_putendl_fd.c ./ft_putnbr_fd.c ./ft_putstr_fd.c ./ft_split.c ./ft_strjoin.c ./ft_strmapi.c ./ft_substr.c ./ft_strtrim.c

SRCSBONUS = ./ft_lstadd_back.c ./ft_lstadd_front.c ./ft_lstclear.c ./ft_lstdelone.c ./ft_lstiter.c ./ft_lstlast.c ./ft_lstmap.c ./ft_lstnew.c ./ft_lstsize.c

OBJBONUS = ${SRCSBONUS:.c=.o}

HEADER = .

OBJS = ${SRCS:.c=.o}

NAME = libft.a

GCC = gcc

RM = rm -f

FLAGS = -Wall -Wextra -Werror

%.o: %.c libft.h
	${GCC} -I ${HEADER} ${FLAGS} -c $< -o ${<:.c=.o}

${NAME}:	${OBJS}
		ar rc ${NAME} ${OBJS}
		ranlib ${NAME}

bonus:		${NAME} ${OBJBONUS}
		ar rc ${NAME} ${OBJBONUS}
		ranlib ${NAME}
		

all:	${NAME}

clean:
		${RM} ${OBJS}
		${RM} ${OBJBONUS}
fclean:		clean
		${RM} ${NAME}

re:		fclean all

.PHONY: all clean fclean re bonus
