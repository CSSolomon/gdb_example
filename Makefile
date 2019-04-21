CC = gcc
E=@
FLAGS = "-Wall" \
				"-Werror" \
				#
			#
DEBUGFLAGS = \
CCFLAGS= "-o" \
#
#
ifeq ($(debug), 1)
    DEBUGFLAGS = "-g" \
    #
    OPTFLAGS = "-O2" \
    #
	E=
else
	OPTFLAGS = "-O0" \
	#
endif

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
	#

.PHONY: clean all use

use:
	$(E)echo "Makefile for gdb example program"
	$(E)echo "if you want to generate with debug symbols, run"
	$(E)echo "debug=1 make all"

all:
	$(E)make clean
	$(E)make $(PROGNAME)

$(PROGNAME): $(filter-out %lib.c, $(wildcard *.c)) $(wildcard *.h) $(LIBNAME)
	$(E)$(CC) $(FLAGS) -o $(PROGNAME) $(LIBLINKFLAGS)

$(LIBNAME): $(wildcard *.h) $(wildcard *lib.c)
	$(E)$(CC) $(FLAGS) -o $@ $?

clean:
	$(E)rm -f $(filter-out %.c, $(filter-out Makefile, $(filter-out %.h, $(wildcard *)))) 
	$(E)rm -f $(PROGNAME) $(LIBNAME)
