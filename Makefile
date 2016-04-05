CFLAGS=-std=c99 -Wall -Wextra -pedantic -Isrc -lm
SRC=src/main.c
GC=/usr/local/opt/bdw-gc/lib/libgc.a -I/usr/local/opt/bdw-gc/include
EXE=joy

all:
	$(CC) $(CFLAGS) -o $(EXE) -DGC_BDW $(SRC) $(GC)

debug:
	$(CC) $(CFLAGS) -o $(EXE) -DGC_BDW $(SRC) $(GC) -g -O0 -DDEBUG

nogc:
	$(CC) $(CFLAGS) -o $(EXE)          $(SRC)

nogcdebug:
	$(CC) $(CFLAGS) -o $(EXE)          $(SRC) -g -O0 -DDEBUG

clean:
	@rm -rf joy joy.dSYM
