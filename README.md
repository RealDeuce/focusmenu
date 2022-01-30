Simple program to update a 3DConnexion SpacePilot SP1 USB Display

This uses a text file in a simple format to update the display based on the title of the X window which has input focus.

It currently has only been built/tested on FreeBSD.

# Dependencies
The following ports are required:\
x11/libX11\
x11-toolkits/libXmu\
comms/hidapi

Also, the 3dxdisp library is required.
My FreeBSD port is [here](https://github.com/RealDeuce/3dxdisp/tree/FreeBSD-hidapi).
The FreeBSD-hidapi branch is recommended since it will need less updating if upstream changes.
This must be located at ../3dxdisp and have the library compiled.

# Build instructions
`make`

# Config file format
Lines that start with anything except a tab are extended regular expressions as documented in re_format(7).
The first regular expression in the file that matches the title of the window that has focus will have the associated text sent to the display.

Lines that start with a tab are text that will be displayed.
The only currently supported control character is the newline (which will be at the end of every line).
All other characters are displayed as CP437 glyphs.
The file is parsed as CP437 text.
