
all:

test_compiler:
	g++ --version

compile:
	g++ -c code/test.cpp -o objects/test.o

package:
	g++ -o main objects/test.o

