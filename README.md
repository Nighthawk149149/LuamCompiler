# LuamCompiler
A compiler for a programming language I’m working on. It focuses on math with optimization to run as fast as possible.

***This language is sort of a joke but I might start using it because it's fun.***

## Optimization Goals

*add.luam*
- Adds a(2) and b(3) and stores it in c to print out(5).
---
var a,2<br>
var b,3<br>
var c

add a,b<br>
push c

out c

---

|<br>
v

*add.lua*
- Adds 2 and 3 to print 5.
---
print(2+3)

---

## Compiler Steps - WIP
1. Get lines from file and filter out invalid lines. Store valid lines in a table for use.
2. Push Optimization
  - If push command is after a set store (Ex. add) then replace store with push.
  - Else look back until store is found.
  - If no store found then error.
3. Variable Optimization
  - Look for and store variables that are used.
  - Replace variable content.
  - Repeat if optimization is possible.
