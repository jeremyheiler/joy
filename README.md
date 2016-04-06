# Rejoice

This is my fork of the [Joy programming language][joy].

## Building

There are no required external dependencies. To build the interpreter
with a basic garbage collector, run `make`, or `make debug` for a
debug build.

### BDW GC

Optionally, to build the interpreter with the
[Boehm-Demers-Weiser][bdw] garbage collector, first install the
library with your package manager, or fetch the [source][bdw-git] and
build it yourself.

#### Mac OS X

It is important to install the latest development version of BDW on OS
X. The latest development version, currently 7.5.0, includes proper
support for detecting `__alloc_size__` when compiling with `clang`.

```
brew install bdw-gc --HEAD
```

#### Debian

```
apt-get install libgc-dev
```

Note: `Makefile` needs to be updated to have generic include paths.

## Running

The interpreter can be used in two ways.

To load and interpret a program, pass the program file as the only
argument:

```
rjc your-program.joy
```

To start a REPL, pass in zero arguments:

```
rjc
```

If the current directory contains the file `usrlib.joy`, the
interpretor will load it before running your program or starting the
REPL. (A file with this name exists in the project's `lib` directory.)

[joy]: https://en.wikipedia.org/wiki/Joy_(programming_language)
[bdw]: http://hboehm.info/gc/
[bdw-git]: https://github.com/ivmai/bdwgc
