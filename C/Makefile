CC      = cc
CFLAGS  = -Wall -Wextra -Werror
LDFLAGS =
LDLIBS  =

RM      = rm -rf
MKDIR_P = mkdir -p

COLLEEN = Colleen
GRACE   = Grace
SULLY   = Sully
NAME    = $(COLLEEN) $(GRACE) $(SULLY)

SRC_COLLEEN = Colleen.c
SRC_GRACE   = Grace.c
SRC_SULLY   = Sully.c
SRC         = $(SRC_COLLEEN) $(SRC_GRACE) $(SRC_SULLY)

OBJDIR = obj
OBJ    = $(SRC:%.c=$(OBJDIR)/%.o)

all: $(NAME)

$(NAME): %: $(OBJDIR)/%.o
	@$(CC) $(LDFLAGS) $^ -o $@ $(LDLIBS)

$(OBJDIR):
	@$(MKDIR_P) $(OBJDIR)

$(OBJDIR)/%.o: %.c | $(OBJDIR)
	@$(CC) $(CFLAGS) -c $< -o $@

clean:
	@$(RM) $(OBJDIR)

fclean: clean
	@$(RM) $(NAME)
	@$(RM) Grace_kid.c Grace_kid.s
	@$(RM) Sully_*.c Sully_*.s Sully_*

re: fclean all

.PHONY: all clean fclean re
