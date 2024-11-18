@echo off
echo Removing Microsoft Edge...

:: Remove Edge for all users
taskkill /f /im msedge.exe >nul 2>&1
rd /s /q "%ProgramFiles(x86)%\Microsoft\Edge" >nul 2>&1
rd /s /q "%ProgramFiles%\Microsoft\Edge" >nul 2>&1
rd /s /q "%LocalAppData%\Microsoft\Edge" >nul 2>&1

:: Clean up Edge-related updates
rd /s /q "%WinDir%\SystemApps\Microsoft.MicrosoftEdge*" >nul 2>&1

echo Microsoft Edge has been removed.
pause
