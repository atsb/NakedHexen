#!/bin/bash
windres -O coff -i nakedhexen.rc -o nakedhexen.res
gcc -O2 -DWIN32 -D_WIN32 -DWINDOWS -DWIN32_LEAN_AND_MEAN *.c -o NakedHexen.exe -lmingw32 -lSDL2main -lSDL2 -mwindows -lSDL2_mixer nakedhexen.res


