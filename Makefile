# PJC C02 by Rafał Pocztarski
# https://github.com/rsp/rsp-pjc-c02
# https://gitlab.com/rsp/rsp-pjc-c02

CXXFLAGS = -g -std=c++1z -Wall -Wfatal-errors
CXXFLAGS_Z03 = -D_USE_MATH_DEFINES

ALL = z01 z02 z03

all: $(ALL)

z01: z01.cc Makefile
	$(CXX) $(CXXFLAGS) -o $@ $@.cc

z02: z02.cc Makefile
	$(CXX) $(CXXFLAGS) -o $@ $@.cc

z03: z03.cc Makefile
	$(CXX) $(CXXFLAGS) -o $@ $@.cc $(CXXFLAGS_Z03)

clean:
	$(RM) $(ALL) *.o

test: all
	./test-all.sh
