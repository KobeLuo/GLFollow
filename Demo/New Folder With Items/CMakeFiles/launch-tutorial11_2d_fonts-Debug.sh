#!/bin/sh
bindir=$(pwd)
cd /Users/Kobe/Development/Research/OpenGL/Demo/ogl-master/tutorial11_2d_fonts/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/Kobe/Development/Research/OpenGL/Demo/Debug/tutorial11_2d_fonts 
	else
		"/Users/Kobe/Development/Research/OpenGL/Demo/Debug/tutorial11_2d_fonts"  
	fi
else
	"/Users/Kobe/Development/Research/OpenGL/Demo/Debug/tutorial11_2d_fonts"  
fi
