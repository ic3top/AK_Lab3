CC=g++

CFLAGS=-c
 
all: lib exec

exec: main.o libcalc.a
	$(CC) main.o libcalc.a -o calculator

main:
	$(CC) $(CFLAGS) main.cpp

lib: calculator.o
	ar -rcs libcalc.a calculator.o

calc:
	$(CC) $(CFLAGS) calculator.cpp

clean:
	rm -f *.o *.a calculator
