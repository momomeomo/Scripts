@echo off
REM batch file for quickly interpreting source files
REM EXAMPLE
REM 	cd C:\Users\momom\Desktop\Repo\Calculator
REM 	python calc.py


:start



set choice=
set /p choice="Do you want to restart? Press 'y' and enter for Yes: "
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='y' goto start
