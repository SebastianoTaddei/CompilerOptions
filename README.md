# Compiler Options

After fighting with several bugs due to undefined behaviour which could have
been avoided by simply using better compiler options, here I am providing the
strictest options I could find. Compiling will be harder, but you'll thank me
later.

Taken and adapted from [Compiler
Options](https://github.com/cpp-best-practices/cppbestpractices/blob/master/02-Use_the_Tools_Available.md#:~:text=Compilers).
Updated on 24/04/2025.

## Usage

Not much thought has gone into making it work on every kind on include
mechanism. I simply:

- Get it via [CPM](https://github.com/cpm-cmake/CPM.cmake) as a dependency.
- This gives you the `target_apply_options(<target)` function which you can
call on the targets you want to enforce those options upon.
