NODE = node

COLLEEN = Colleen
GRACE   = Grace
SULLY   = Sully

NAME = $(COLLEEN) $(GRACE) $(SULLY)

SRC_COLLEEN = Colleen.js
SRC_GRACE   = Grace.js
SRC_SULLY   = Sully.js

SRC = $(SRC_COLLEEN) $(SRC_GRACE) $(SRC_SULLY)

all: $(NAME)

colleen: $(COLLEEN)
grace: $(GRACE)
sully: $(SULLY)

$(COLLEEN): $(SRC_COLLEEN)
	@$(NODE) $<

$(GRACE): $(SRC_GRACE)
	@$(NODE) $<

$(SULLY): $(SRC_SULLY)
	@$(NODE) $<

clean:
	@true

fclean: clean
	@rm -rf Grace_kid.js
	@rm -rf Sully_*.js Sully_*
	@rm -rf Colleen_kid.js Colleen_kid.* 2>/dev/null || true

re: fclean all

.PHONY: all colleen grace sully clean fclean re $(NAME)
