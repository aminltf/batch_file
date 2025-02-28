@echo off
title Open Ports Checker
echo Checking open ports...
netstat -ano | findstr LISTENING
if %errorlevel% neq 0 (
    echo No open ports found.
) else (
    echo Open ports listed above.
)
pause