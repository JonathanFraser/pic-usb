MAKEFLAGS += -rR --no-print-directory

SRC = set_config.c set_ra0.c clr_ra0.c
INC = -I/usr/local/include
LNK = -L/usr/local/lib -lusb

all: set_config set_ra0 clr_ra0

set_config: set_config.c
	gcc -o $@ $? $(INC) $(LNK)

set_ra0: set_ra0.c
	gcc -o $@ $? $(INC) $(LNK)

clr_ra0: clr_ra0.c
	gcc -o $@ $? $(INC) $(LNK)
clean:
	rm -f clr_ra0
	rm -f set_ra0
	rm -f set_config
	
