# Assignment 4 - Haskell

The program takes ints and lists to be run through various functions. Such functions are piecewise functions using recursion, functional composition, list operations, and currying for Haskell. Each function returns an int or list of ints.

## Setup

The Haskell program will be run using 'ghci'

## Running

From the command line:

```
... ghci

ghci> :l HW4.hs

ghci> piece' x                  piecewise function and recursion (Part 1a)

ghci> exp' x y                  piecewise function and recursion (Part 1b)

ghci> comp' [x]                 functional composition (Part 2)

ghci> count cond [x]            list operation (Part 3a)

ghci> count'filter cond [x]     list operations (Part 3b)

ghci> count'lc cond [x]         list operations (Part 3c)

ghci> closure [x]               currying (Part 4; is using Part 3a)

ghci> take x1 (powers' x)       extra credit (Part a)

ghci> count' cond [x]           extra credit (Part b)
```

## Notes:
All functions work (closure will only return the number of elements in an array)

x = a variable
y = a variable
[x] = list of ints
cond = user specified criteria
x1 = the int amount to return from powers' 

To run piece' with a negative int surround negative int (); (-x)

For exp' : first # being x and second # being y; represent x^y

There are some helper functions in the file to assist specific functions