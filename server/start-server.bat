@echo off
title DarkEden Mobile Server
py -3 "%~dp0server.py" start
if errorlevel 1 (
    echo.
    echo Server startup failed. Check the error above.
)
echo.
pause
