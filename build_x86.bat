.\7za x -aos cl.7z
.\7za x -aos libs.7z
.\7za x -aos src.7z
mkdir tmp_x86
mkdir out_x86
set INCLUDE=""
.\cl /GS- /O2 /c faac/*.c /I faac /I CRT /o tmp_x86\
.\cl tmp_x86\*.obj libs\x86\*.lib /link /def:faac\libfaac.def /DLL /nodefaultlib /MACHINE:x86 /OUT:out_x86\libfaac.dll
