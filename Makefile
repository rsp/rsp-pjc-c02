CC = g++

CFLAGS  = -g -Wall -Wfatal-errors

ALL = zad1 zad2 zad3

all: $(ALL)

zad1: Makefile zad1.cc
	$(CC) $(CFLAGS) -o $@ $@.cc

zad2: zad2.cc
	$(CC) $(CFLAGS) -o $@ $@.cc

zad3: zad3.cc
	$(CC) $(CFLAGS) -D_USE_MATH_DEFINES -o $@ $@.cc

zad4: zad4.cc
	$(CC) $(CFLAGS) -o $@ $@.cc

zad5: zad5.cc
	$(CC) $(CFLAGS) -o $@ $@.cc

clean:
	$(RM) $(ALL) *.o

test: all
	./test-all.sh
