INSTALL_DIR=/usr/local/bin
CFLAGS=-Wall -Wextra -pedantic -std=c99 -O3

ifeq ($(shell uname),Linux)
	LDFLAGS=-lutil
endif

ptydo:

clean:
	rm -f ptydo

install: ptydo
	cp $^ $(INSTALL_DIR)