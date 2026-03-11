@echo off
title FoodFair Meat Dept

:: Set Epson as default printer
rundll32 printui.dll,PrintUIEntry /y /n "EPSON TM-m30III Receipt"

:: Find Chrome
set CHROME="C:\Program Files\Google\Chrome\Application\chrome.exe"
if not exist %CHROME% set CHROME="C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
if not exist %CHROME% set CHROME="%LOCALAPPDATA%\Google\Chrome\Application\chrome.exe"

:: Launch Chrome kiosk — no print dialog, auto prints to Epson
start "" %CHROME% --kiosk --kiosk-printing --disable-print-preview --disable-popup-blocking --no-default-browser-check --disable-infobars --noerrdialogs --start-fullscreen "https://seating4you-debug.github.io/ticket/"
