CC      = gcc
CFLAGS  = -Wall -Wextra -g
PREFIX  = /usr/local

all: pwd_79_16 lab5_2 lab5_3

pwd_79_16: pwd_79_16.c
	$(CC) $(CFLAGS) -o $@ $<

lab5_2: lab5_2.c
	$(CC) $(CFLAGS) -rdynamic -o $@ $<

lab5_3: lab5_3.c
	$(CC) $(CFLAGS) -o $@ $<

install: pwd_79_16
	sudo install -m 755 pwd_79_16 $(PREFIX)/bin/pwd_79_16

uninstall:
	sudo rm -f $(PREFIX)/bin/pwd_79_16

clean:
	rm -f pwd_79_16 lab5_2 lab5_3

.PHONY: all install uninstall clean