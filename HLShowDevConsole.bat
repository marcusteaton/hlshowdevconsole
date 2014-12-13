@echo off

REM Set window title
title HLShowDevConsole - http://marcus.crisisresponseunit.com/

REM Tell user what we're doing
echo Checking if hl.exe is in the current directory...

REM Check if a file called "hl.exe" exists
if exist hl.exe goto found

REM If we didn't find it, tell the user and wait for input, then quit
echo ERROR: Seems that "hl.exe" wasn't found; did you copy this file to the same folder where hl.exe is?
pause
exit

REM If we did find it, tell user and call "hl.exe" to load with extra paramaters
:found
echo Loading "hl.exe"
hl.exe -dev -console
