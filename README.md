"This script tests to make sure that Make looks for
default makefiles in the correct order (GNUmakefile,makefile,Makefile)"

make  executes  commands in the makefile to update one or more target names,
where name is typically a program.
If no -f option is present, make will look for the makefiles
GNUmakefile, makefile, and Makefile, in that order.

\#make
------
It called GNUmakefile

\#make -f makefile
------------------
It called makefile

