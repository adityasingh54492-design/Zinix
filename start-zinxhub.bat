@echo off
title ZINX HUB Web Server
cd /d "%~dp0"
echo ==============================================
echo       ZINX HUB - ALL-IN-ONE SOFTWARE HUB
echo ==============================================
echo Starting server at http://localhost:3000 ...
echo Press Ctrl+C anytime to stop.
echo.

set PATH=C:\Program Files\nodejs;%PATH%
npm run start -- -p 3000
pause

