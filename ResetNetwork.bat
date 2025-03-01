@echo off
title Reset Network Settings
echo Resetting network settings...
netsh int ip reset >nul
netsh winsock reset >nul
ipconfig /release >nul
ipconfig /renew >nul
ipconfig /flushdns >nul
if %errorlevel% neq 0 (
    echo Network reset failed.
) else (
    echo Network reset completed successfully!
)
pause