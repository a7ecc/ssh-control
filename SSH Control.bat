@echo off
title A7 - SSH
:0
echo 1)Close App
echo 2)Sleep
echo 3)Shutdown
set /p action=Chouse The Action:
if %action%==1 set /p app=Enter The APP Name:
if %action%==1 plink.exe -ssh "administrator@a7" -pw "123" taskkill /f /im "%app%.exe"
if %action%==2 plink.exe -ssh "administrator@a7" -pw "123" "shutdown /f /h"
if %action%==3 plink.exe -ssh "administrator@a7" -pw "123" "shutdown /p /f"
pause
cls
goto 0