CC = gcc
CFLAGS = -static
SRCS := $(wildcard *.c) $(wildcard *.s)

movprogs: $(SRCS)
	$(CC) $(CFLAGS) -o $@ $^

test: movprogs
	./movprogs