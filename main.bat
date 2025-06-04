@echo off

cls

echo Welcome to a videogame demo, made entirely with batch

echo Thanks for checking it out!

echo If you want to modify it, feel free to! Just make sure to add appropriate credit!
pause

choice /c SLE /m "Would you like to: Start, Load, or Exit?"

if errorlevel 3 goto exit
if errorlevel 2 goto load
if errorlevel 1 goto start


:start
echo Starting Game...
echo Hold on... executing start.bat

:load
echo "Loading data from text file... (REMEMBER!!! IF YOU DELETE load.txt YOUR SAVE WILL BE DELETED!!!!)"

:exit
echo Quitting...
echo Are you sure?
pause
exit