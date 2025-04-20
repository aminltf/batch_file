@echo off
title Internet Connectivity Check
echo Checking internet connection...
ping -n 3 8.8.8.8 >nul
if %errorlevel% neq 0 (
    echo No internet connection detected!
) else (
    echo Internet is working fine!
)
pause