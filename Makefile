all: main.o hello.o
	gcc main.o hello.o -o target.out
main.o: main.c hello.h
	gcc -I . -c main.c
hello.o: hello.c hello.h
	gcc -I . -c hello.c
clean:
	rm -fr *.o
	rm -f *.out
