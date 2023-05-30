@echo off
cls

echo This script deletes Star citizen shader folder
echo Default folder location: %localappdata%\Star Citizen\
echo _
echo Verify the folder opened is the correct one, if star citizen folder was not opened then it was not found
echo _

%SystemRoot%\explorer.exe "%localappdata%\Star Citizen\"

rmdir /s "%localappdata%\Star Citizen\"

set /p COMPLETED= Script completed press any button to exit . . .
