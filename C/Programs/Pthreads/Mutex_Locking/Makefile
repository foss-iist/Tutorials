CC=gcc
CFLAGS=-lpthread
EXEC=Run
all:$(EXEC)
$(EXEC): Main.c
	$(CC) -o $@ $^ $(CFLAGS)
debug: Main.c
	$(CC) -o $@ $^ $(CFLAGS) -g
.PHONY: clean
clean:
	rm -f $(EXEC) debug
