CFLAGS=-std=c99 -Wall -Wextra -pedantic -Isrc -lm
SRC_FILES=src/interp.c src/scan.c src/utils.c src/main.c
GC=/usr/local/opt/bdw-gc/lib/libgc.a -I/usr/local/opt/bdw-gc/include
EXE=joy

all:
	$(CC) $(CFLAGS) -o $(EXE) -DGC_BDW $(SRC_FILES) $(GC)

debug:
	$(CC) $(CFLAGS) -o $(EXE) -DGC_BDW $(SRC_FILES) $(GC) -g -O0 -DDEBUG

nogc:
	$(CC) $(CFLAGS) -o $(EXE)          $(SRC_FILES)

nogcdebug:
	$(CC) $(CFLAGS) -o $(EXE)          $(SRC_FILES) -g -O0 -DDEBUG

clean:
	@rm -rf joy joy.dSYM
