@echo off
cd /d "%~dp0"
git status
set /p msg="Enter commit message: "

git add .
git commit -m "%msg%"

git push origin main

pause
