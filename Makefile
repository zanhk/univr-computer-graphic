# This sample Makefile allows you to make an OpenGL application
#   whose source is exactly one .c file.
#
#
# To use this Makefile, you type:
#
#        make xxxx
#                  
# where
#       xxxx.c is the name of the file you wish to compile 
#       
# A binary named xxxx will be produced
# Libraries are assumed to be in the default search paths
# as are any required include files

CPP = g++ -g -std=c++0x

LDLIBS = -lglfw -lGL -lGLU -lX11 
LIBS = -L/usr/X11R6/lib -L./lib/lin
INCLUDE = -I. -I./include/ -I/usr/X11R6/include

.cpp:
	$(CPP) $(INCLUDE) $(LIBS) $@.cpp -o $@ $(LDLIBS) 
