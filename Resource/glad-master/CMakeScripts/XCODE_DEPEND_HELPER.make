# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.glad.Debug:
/Users/Kobe/Development/Research/OpenGL/Resource/glad-master/Debug/libglad.a:
	/bin/rm -f /Users/Kobe/Development/Research/OpenGL/Resource/glad-master/Debug/libglad.a


PostBuild.glad.Release:
/Users/Kobe/Development/Research/OpenGL/Resource/glad-master/Release/libglad.a:
	/bin/rm -f /Users/Kobe/Development/Research/OpenGL/Resource/glad-master/Release/libglad.a


PostBuild.glad.MinSizeRel:
/Users/Kobe/Development/Research/OpenGL/Resource/glad-master/MinSizeRel/libglad.a:
	/bin/rm -f /Users/Kobe/Development/Research/OpenGL/Resource/glad-master/MinSizeRel/libglad.a


PostBuild.glad.RelWithDebInfo:
/Users/Kobe/Development/Research/OpenGL/Resource/glad-master/RelWithDebInfo/libglad.a:
	/bin/rm -f /Users/Kobe/Development/Research/OpenGL/Resource/glad-master/RelWithDebInfo/libglad.a




# For each target create a dummy ruleso the target does not have to exist
