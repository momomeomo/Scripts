@echo off


:start

	REM cd C:\Users\momom\Desktop\rust\
	REM rustc test.rs
	REM .\meme1.exe
cd 
rustc 
.\

set choice=
set /p choice="Do you want to restart? Press 'y' and enter for Yes: "
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='y' goto start
