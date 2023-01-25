@echo off
title %pc% - nikename
set pc=192.168.1.222222222222222
:0
cls
echo 1)Close App
echo 2)Sleep
echo 3)Shutdown
set /p action=Chouse The Action:
if %action%==1 plink.exe -ssh "administrator@%pc%" -pw "123" tasklist
if %action%==1 if errorlevel 1 echo.
if %action%==1 if errorlevel 1 pause
if %action%==1 if errorlevel 1 goto 0
if %action%==1 set /p app=Enter The APP Name:
if %action%==1 plink.exe -ssh "administrator@%pc%" -pw "123" taskkill /f /im "%app%"
if %action%==2 plink.exe -ssh "administrator@%pc%" -pw "123" "shutdown /f /h"
if %action%==3 plink.exe -ssh "administrator@%pc%" -pw "123" "shutdown /p /f"
echo.
pause
goto 0