@echo off

REM Debug
cl /c /D_DEBUG m3d.c /Z7
lib /OUT:m3d_windows_amd64_debug.lib m3d.obj
del m3d.obj

REM Release
cl /c /O2 /DNDEBUG m3d.c
lib /OUT:m3d_windows_amd64_release.lib m3d.obj
del m3d.obj
