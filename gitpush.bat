@echo off
cd /d "%~dp0"

echo Pulling latest changes from remote (may ask to merge unrelated histories)...
git pull origin main --allow-unrelated-histories

set /p msg="Enter commit message: "

git add .
git commit -m "%msg%"

git push origin main

pause
