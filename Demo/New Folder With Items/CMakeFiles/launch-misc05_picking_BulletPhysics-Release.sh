#!/bin/sh
bindir=$(pwd)
cd /Users/Kobe/Development/Research/OpenGL/Demo/ogl-master/misc05_picking/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		GDB_COMMAND-NOTFOUND -batch -command=$bindir/gdbscript  /Users/Kobe/Development/Research/OpenGL/Demo/Release/misc05_picking_BulletPhysics 
	else
		"/Users/Kobe/Development/Research/OpenGL/Demo/Release/misc05_picking_BulletPhysics"  
	fi
else
	"/Users/Kobe/Development/Research/OpenGL/Demo/Release/misc05_picking_BulletPhysics"  
fi
