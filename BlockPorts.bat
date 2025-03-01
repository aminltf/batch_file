@echo off
title Block Port 445
echo Blocking port 445...
netsh advfirewall firewall add rule name="Block Port 445" dir=in action=block protocol=TCP localport=445 >nul
netsh advfirewall firewall add rule name="Block Port 445" dir=out action=block protocol=TCP localport=445 >nul
if %errorlevel% neq 0 (
    echo Failed to block port 445.
) else (
    echo Port 445 successfully blocked!
)
pause