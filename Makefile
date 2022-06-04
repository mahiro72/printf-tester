CC := cc
CFLAGS := -Wall -Wextra -Werror
FT_PRINTF_DIR := ..
FT_PRINTF := $(FT_PRINTF_DIR)/libftprintf.a
INCLUDES := -I $(FT_PRINTF_DIR)/includes
SRCS := test.c
OBJS = $(SRCS:.c=.o)
RM := rm -rf
RESULT := result.log
FT_RESULT := ft_result.log
EXEFILE := a.out

all: test

test:
	@$(RM) a.out
	$(MAKE) -C $(FT_PRINTF_DIR)
	@echo "---- test start ----"
	@echo "\n---- printf ----"
	$(CC) $(INCLUDES) $(CFLAGS) $(SRCS) $(FT_PRINTF)
	./a.out > $(RESULT)
	@$(RM) a.out

	@echo "\n---- ft_printf ----"
	$(CC) $(INCLUDES) $(CFLAGS) $(SRCS) $(FT_PRINTF) -D FT_PRINTF
	./a.out > $(FT_RESULT)

	@echo "\n---- show diff ----"
	@diff -U 0 $(RESULT) $(FT_RESULT) && \
		printf "test clear :D"
	
	@$(RM) a.out



clean:
	$(RM) $(OBJS) $(EXEFILE)

fclean: clean
	$(RM) $(RESULT) $(FT_RESULT)

re: fclean all

.PHONY: all clean fclean re test