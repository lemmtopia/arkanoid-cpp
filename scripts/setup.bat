@echo off

pushd ..
vendor\binaries\premake\premake5.exe --file=arkanoid.lua vs2022
popd
pause