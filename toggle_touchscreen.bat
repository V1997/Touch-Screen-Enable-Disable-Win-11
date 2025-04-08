@echo off
:: Get the full path to the script
set scriptPath=%~dp0Toggle_Screen\toggle_touchscreen.ps1

:: Run PowerShell as administrator with the script
powershell -Command "Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File \"%scriptPath%\"' -Verb RunAs"
