CFLAG=-std=c11 -g -static

ccompiler: ccompiler.c

test: ccompiler
	./test.sh

clean:
	rm -f ccompiler *.o *~ tmp*

.PHONY: test clean