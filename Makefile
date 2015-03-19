CC?=clang
CFLAGS?=-I/usr/local/include -L/usr/local/lib -luv
OUTFILES=helloworld idlewatch uvcat
.PHONY=clean

all: uvcat

helloworld: helloworld.c
	$(CC) -o $@ $< $(CFLAGS)

idlewatch: idle-watcher.c
	$(CC) -o $@ $< $(CFLAGS)

uvcat: uvcat.c
	$(CC) -o $@ $< $(CFLAGS)

clean:
	for FILE in $(OUTFILES); do \
		if [ -f ./$$FILE ]; then \
			rm -rfv ./$$FILE; \
		fi \
	done
