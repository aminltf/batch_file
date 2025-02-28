@echo off
title Clear DNS Cache
echo Flushing DNS Cache...
ipconfig /flushdns
if %errorlevel% neq 0 (
    echo Failed to flush DNS cache.
) else (
    echo DNS cache cleared successfully!
)
pause