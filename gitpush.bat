@echo off
REM Set your commit message
set /p msg="Enter commit message: "

REM Add all changes
git add .

REM Commit with the message you typed
git commit -m "%msg%"

REM Push to the main branch
git push origin main

pause
