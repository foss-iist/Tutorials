CC=gcc
INCFLAG=-I.
LFLAG=-L. -ltest
EXEC=Run
all:$(EXEC)
$(EXEC): Main.c libtest.a
	$(CC) -o $@ Main.c $(INCFLAG) $(LFLAG)
libtest.a: library.o
	ar cr $@ $^
library.o: library.c library.h
	$(CC) -c library.c $(INCFLAG)
.PHONY: clean
clean:
	rm -f *.o $(EXEC) *.a
