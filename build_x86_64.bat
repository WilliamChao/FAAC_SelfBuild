.\7za x -aos cl.7z
.\7za x -aos libs.7z
.\7za x -aos src.7z
mkdir tmp_x86_64
mkdir out_x86_64
set INCLUDE=""
.\cl --target=x86_64-win32 /GS- /O2 /c faac/*.c /I faac /I CRT /o tmp_x86_64\
.\cl tmp_x86_64\*.obj libs\x86_64\*.lib /link /def:faac\libfaac.def /DLL /nodefaultlib /MACHINE:x64 /OUT:out_x86_64\libfaac.dll
