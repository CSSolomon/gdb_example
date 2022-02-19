# gdb_example
Program to be used as example on gdb usage

## Introduction
In order to present gdb common use cases and a primer good enough to start, a simple
program will be developed. The aim is to showcase how different mechanisms can help us
trace the issue that appears effectively.

## Areas to be discussed:
 The program should be built in such a way so as to show the mechanisms listed below. The
 listing is in no particular order as of writing this. For each item, the correspoding
 info command will be shown also

    - Breakpoints
        - Inserting breakpoints
        - Disabling breakpoints
        - Enabling breakpoints
        - Inserting catchpoints
            - On load
            - On signal
            - On exec
        - Inserting watchpoints
        - Command hooks
        - Continuing execution
            - Stepwise
                - Next vs step
                - To end of function
            - Bypass count
    - Execution wrappers
    - Use of gdbinit files
    - Use of source files
    - Use of commands listed by CLI
    - State examination
        - backtrace
        - Program execution status
        - Thread status
        - Moving up and down frames
        - Printing variables
        - Printing types of variables

### Additional areas
In order to debug a program, it needs to be debugged with the appropriate flags. use of
the source code, when available, can also help, as well as using gdbserver to debug a
remote program. The following ancillary areas will therefore also be shown:

    - Compilation for debugging vs non debugging
    - gdbserver usage
    - Makefile options to build with debug symbols
    - Using a source code directory

## Characteristics of the program
In order to allow displaying of the various characteristics, the program will need to make
use of the following mechanisms:

    - Use of exec
    - Use of threads
    - Use of fork
    - Use of signals
    - Definition of structs
    - Use of shared libraries

## Future improvements / additional areas
In the future, the following areas may be expanded upon:

    - Remote debugging 
    - Attaching to already running processes
    - Non blocking calls
    - Stopping and debugging of a single thread
    - Valgrind implementation to understand memory usage

##### Last updated on Mon 22 Apr 2019 
