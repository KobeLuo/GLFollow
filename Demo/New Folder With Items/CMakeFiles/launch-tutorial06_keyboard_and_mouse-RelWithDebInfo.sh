#!/bin/sh
bindir=$(pwd)
cd /Users/Kobe/Development/Research/OpenGL/Demo/ogl-master/tutorial06_keyboard_and_mouse/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/Kobe/Development/Research/OpenGL/Demo/RelWithDebInfo/tutorial06_keyboard_and_mouse 
	else
		"/Users/Kobe/Development/Research/OpenGL/Demo/RelWithDebInfo/tutorial06_keyboard_and_mouse"  
	fi
else
	"/Users/Kobe/Development/Research/OpenGL/Demo/RelWithDebInfo/tutorial06_keyboard_and_mouse"  
fi
