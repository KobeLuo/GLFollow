#!/bin/sh
bindir=$(pwd)
cd /Users/Kobe/Development/Research/OpenGL/Demo/ogl-master/tutorial10_transparency/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/Kobe/Development/Research/OpenGL/Demo/MinSizeRel/tutorial10_transparency 
	else
		"/Users/Kobe/Development/Research/OpenGL/Demo/MinSizeRel/tutorial10_transparency"  
	fi
else
	"/Users/Kobe/Development/Research/OpenGL/Demo/MinSizeRel/tutorial10_transparency"  
fi
