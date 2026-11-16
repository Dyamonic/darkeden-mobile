@echo off
py "%~dp0manage.py" stop
if errorlevel 1 pause
