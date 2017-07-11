#!/bin/sh
bindir=$(pwd)
cd /Users/Kobe/Development/Research/OpenGL/Demo/ogl-master/tutorial14_render_to_texture/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/Kobe/Development/Research/OpenGL/Demo/MinSizeRel/tutorial14_render_to_texture 
	else
		"/Users/Kobe/Development/Research/OpenGL/Demo/MinSizeRel/tutorial14_render_to_texture"  
	fi
else
	"/Users/Kobe/Development/Research/OpenGL/Demo/MinSizeRel/tutorial14_render_to_texture"  
fi
