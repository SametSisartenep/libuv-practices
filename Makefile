CC=clang
CFLAGS=-I/usr/local/include -L/usr/local/lib -luv

helloworld: helloworld.c
	$(CC) -o helloworld helloworld.c $(CFLAGS)

idlewatch: idle-watcher.c
	$(CC) -o idle-watcher idle-watcher.c $(CFLAGS)

uvcat: uvcat.c
	$(CC) -o uvcat uvcat.c $(CFLAGS)
