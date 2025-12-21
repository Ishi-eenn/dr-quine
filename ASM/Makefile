CC = gcc
CFLAGS = -Wall -Wextra -Werror
LDFLAGS = -no-pie

NASM = nasm
NASMFLAGS = -f elf64

COLLEEN = Colleen
GRACE   = Grace
SULLY   = Sully

NAME = $(COLLEEN) $(GRACE) $(SULLY)

SRC_COLLEEN = Colleen.s
SRC_GRACE   = Grace.s
SRC_SULLY   = Sully.s

SRC = $(SRC_COLLEEN) $(SRC_GRACE) $(SRC_SULLY)

OBJDIR = obj
OBJ = $(addprefix $(OBJDIR)/, $(SRC:.s=.o))

all: $(NAME)

colleen: $(COLLEEN)
grace: $(GRACE)
sully: $(SULLY)

$(COLLEEN): $(OBJDIR)/Colleen.o
	@$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@

$(GRACE): $(OBJDIR)/Grace.o
	@$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@

$(SULLY): $(OBJDIR)/Sully.o
	@$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@

$(OBJDIR):
	@mkdir -p $(OBJDIR)

$(OBJDIR)/%.o: %.s | $(OBJDIR)
	@$(NASM) $(NASMFLAGS) $< -o $@

clean:
	@rm -rf $(OBJDIR)

fclean: clean
	@rm -rf $(NAME)
	@rm -rf Grace_kid.s
	@rm -rf Sully_*.s Sully_*

re: fclean all

.PHONY: all colleen grace sully clean fclean re
