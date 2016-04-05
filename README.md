# Rejoice

This is my fork of the [Joy programming language][joy].

## Building

The only external dependency is the [Boehm-Demers-Weiser GC][bdw].

The latest development version of BDW, 7.5.0, includes better support
for detecting `__alloc_size__` when using `clang`. Fortunately, this
is easy to install with `brew` if you're on OS X. If you'd rather
install it yourself, or you're not on OS X and it isn't available with
your package manager, clone the [repository][bdw-git], and follow
their build instructions. Then update the `Makefile` to locate your
build of BDW. (Hopefully this can be handled better in the future.)

```
brew install bdw-gc --HEAD
make
```

To build without a garbage collector, run:

```
make nogc
```

Debug builds can be made with `debug` or `nogcdebug` targets.

## Running

The Rejoice interpreter can be used in two ways.

To load and interpret a program, pass the program file as the only
argument:

```
joy your-program.joy
```

To start a REPL, pass in zero arguments:

```
joy
```

In either case, if the current directory contains the file
`usrlib.joy`, the interpretor will load it before running your program
or starting the REPL.

[joy]: http://www.latrobe.edu.au/humanities/research/research-projects/past-projects/joy-programming-language
[bdw]: http://hboehm.info/gc/
[bdw-git]: https://github.com/ivmai/bdwgc
