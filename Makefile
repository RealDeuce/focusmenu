CFLAGS += -O0 -g `pkg-config --cflags x11 xmu hidapi` -I../3dxdisp/src
LDFLAGS += `pkg-config --libs x11 xmu hidapi` -L../3dxdisp -l3dxdisp

focusmenu: focusmenu.c

clean:
	rm -f focusmenu
