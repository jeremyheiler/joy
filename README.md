# Rejoice

This is my fork of the [Joy programming language][joy].

## Building

The only external dependency is the [Boehm-Demers-Weiser GC][bdw].

### Mac OS X

The latest development version of BDW, 7.5.0, includes better support
for detecting `__alloc_size__` when using `clang`. Fortunately, this
is easy to install with `brew`. If you'd rather install it yourself,
or you're not on OSX and it isn't available with your package manager,
clone the [repository][bdw-git], and follow their build instructions.
Then update the `Makefile` to locate your build of BDW. (Hopefully
this can be handled better in the future.)

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
