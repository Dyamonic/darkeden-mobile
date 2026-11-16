@echo off
py "%~dp0manage.py" start
if errorlevel 1 pause
