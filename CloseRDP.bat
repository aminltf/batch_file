@echo off
title Close RDP Sessions
echo Closing all active RDP sessions...
tasklist /svc | findstr "TermService"
taskkill /F /IM mstsc.exe >nul 2>&1
if %errorlevel% neq 0 (
    echo No active RDP sessions found.
) else (
    echo All RDP sessions closed successfully!
)
pause