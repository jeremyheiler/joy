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

[joy]: http://www.latrobe.edu.au/humanities/research/research-projects/past-projects/joy-programming-language
[bdw]: http://hboehm.info/gc/
[bdw-git]: https://github.com/ivmai/bdwgc

## Running

Because I blindly reorganized the code, in order to successfully run
the interpreter is to be in the `lib` directory. So, if you've built
the executable in the project root, `cd` into `lib` and then run
`../joy` to start the REPL.
