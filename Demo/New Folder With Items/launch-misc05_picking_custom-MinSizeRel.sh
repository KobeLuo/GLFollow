#!/bin/sh
bindir=$(pwd)
cd /Users/Kobe/Development/Research/OpenGL/Demo/ogl-master/misc05_picking/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/Kobe/Development/Research/OpenGL/Demo/MinSizeRel/misc05_picking_custom 
	else
		"/Users/Kobe/Development/Research/OpenGL/Demo/MinSizeRel/misc05_picking_custom"  
	fi
else
	"/Users/Kobe/Development/Research/OpenGL/Demo/MinSizeRel/misc05_picking_custom"  
fi
