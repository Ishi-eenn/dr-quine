CC = cc
CFLAGS = -Wall -Wextra -Werror

COLLEEN = Colleen
GRACE = Grace
SULLY = Sully

NAME = $(COLLEEN) $(GRACE) $(SULLY)

SRC_COLLEEN = Colleen.c
SRC_GRACE = Grace.c
SRC_SULLY = Sully.c

SRC = $(SRC_COLLEEN) $(SRC_GRACE) $(SRC_SULLY)

OBJDIR = obj
OBJ = $(addprefix $(OBJDIR)/, $(SRC:.c=.o))

all: $(NAME)

colleen: $(COLLEEN)
grace: $(GRACE)
sully: $(SULLY)

$(COLLEEN): $(OBJDIR)/Colleen.o
	@$(CC) $(CFLAGS) $^ -o $@

$(GRACE): $(OBJDIR)/Grace.o
	@$(CC) $(CFLAGS) $^ -o $@

$(SULLY): $(OBJDIR)/Sully.o
	@$(CC) $(CFLAGS) $^ -o $@

$(OBJDIR):
	@mkdir -p $(OBJDIR)

$(OBJDIR)/%.o: %.c | $(OBJDIR)
	@$(CC) $(CFLAGS) -c $< -o $@

clean:
	@rm -rf $(OBJDIR)

fclean: clean
	@rm -rf $(NAME)
	@rm -rf Grace_kid.c Grace_kid.s
	@rm -rf Sully_*.c Sully_*.s Sully_*

re: fclean all

.PHONY: all colleen grace sully clean fclean re
