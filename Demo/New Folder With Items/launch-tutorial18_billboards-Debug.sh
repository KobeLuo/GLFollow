#!/bin/sh
bindir=$(pwd)
cd /Users/Kobe/Development/Research/OpenGL/Demo/ogl-master/tutorial18_billboards_and_particles/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/Kobe/Development/Research/OpenGL/Demo/Debug/tutorial18_billboards 
	else
		"/Users/Kobe/Development/Research/OpenGL/Demo/Debug/tutorial18_billboards"  
	fi
else
	"/Users/Kobe/Development/Research/OpenGL/Demo/Debug/tutorial18_billboards"  
fi
