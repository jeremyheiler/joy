CFLAGS=-std=c99 -Wall -Wextra -pedantic -Isrc -lm
SRC=src/main.c
#GC=/usr/local/opt/bdw-gc/lib/libgc.a -I/usr/local/opt/bdw-gc/include
GC=-L/usr/local/opt/bdw-gc/lib -lgc -I/usr/local/opt/bdw-gc/include
EXE=rjc

all:
	$(CC) $(CFLAGS) -o $(EXE)          $(SRC)

debug:
	$(CC) $(CFLAGS) -o $(EXE)          $(SRC) -g -O0 -DDEBUG

bdw:
	$(CC) $(CFLAGS) -o $(EXE) -DGC_BDW $(SRC) $(GC)

bdw-debug:
	$(CC) $(CFLAGS) -o $(EXE) -DGC_BDW $(SRC) $(GC) -g -O0 -DDEBUG

clean:
	@rm -rf $(EXE) $(EXE).dSYM
