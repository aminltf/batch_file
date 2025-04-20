@echo off
title Check Running Services
echo Listing auto-start services...
wmic service get name,displayname,startmode | findstr "Auto"
pause