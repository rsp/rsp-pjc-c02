# PJC C02 by Rafał Pocztarski
# https://github.com/rsp/rsp-pjc-c02
# https://gitlab.com/rsp/rsp-pjc-c02

CXXFLAGS = -g -std=c++1z -Wall -Wfatal-errors
CXXFLAGS_Z03 = -D_USE_MATH_DEFINES

ALL = zad1 zad2 zad3

all: $(ALL)

zad1: zad1.cc Makefile
	$(CXX) $(CXXFLAGS) -o $@ $@.cc

zad2: zad2.cc Makefile
	$(CXX) $(CXXFLAGS) -o $@ $@.cc

zad3: zad3.cc Makefile
	$(CXX) $(CXXFLAGS) -o $@ $@.cc $(CXXFLAGS_Z03)

clean:
	$(RM) $(ALL) *.o

test: all
	./test-all.sh
