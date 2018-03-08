# Make

+ Created initially by Stu Feldman, Bell Labs - 1977

+ Example application
   + Compile C code into DLL
   + Create PDF from latex file that depends on 
   + Create plots for a paper from R code.
   + Update a web site. (rsync comparison)
   + Identify dependencies
   
+ What else is make useful for?

+ Concepts
   + rules
   + dependencies
   + timestamps

+ Different versions of make
   + GNU
   
   
+ Basics of Make
   + rules - targets, dependencies and commands.
```
target:  dep1 dep2 dep3
	
```
   + Note the **TAB** in the rule. Most common error!

+ Calling make
   + make
   + make target
   + make VAR=a VAR2=bcde

+ Name of file - Makefile, makefile, GNUmakefile
   + make -f <file> ...
   
+ Generic targets

+  Rules
   + Shell commands
   + @
   + Quotes
   + Make variables

+ Variables
+ Functions
   + wildcard
   + patsubst
   + 

+ Comments

+ Common targets
   + clean, distclean
   + all

+ Debugging

+ Automating the dependencies
   + gcc -M
   + CodeDepends for R.


+ Connection to autoconf, cmake, 
+ Connection to ant, maven.
   + mostly java
   + maven more general than ant.

