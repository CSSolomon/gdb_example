CC = gcc
FLAGS = "-Wall"   \
				"-Werror" \
				"-g"			\
				#
PROGNAME="gdbsample"
LIBNAME="libctest.so.1"

LIBFLAGS="-fPIC" \
	"-shared" \
	"-W1,-soname,"$(LIBNAME) \
	"-o" \
	$(LIBNAME)".0" \
	#
LIBLINKFLAGS="-I./" \
    "-L./" \
    "-lctest" \
    "-o" \
	$(PROGNAME)
	#

.PHONY: clean all

$(PROGNAME): $(filter-out %lib.c, $(wildcard *.c)) $(wildcard *.h) $(LIBNAME)
	 $(CC) $(FLAGS) -o $(PROGNAME) $(LIBLINKFLAGS)

$(LIBNAME): $(wildcard *.h) $(wildcard *lib.c)
	$(CC) $(FLAGS) -o $@ $?

all:
	@make clean
	@make $(PROGNAME)
	

clean:
	@rm -f $(filter-out %.c, $(filter-out Makefile, $(filter-out %.h, $(wildcard *))))
