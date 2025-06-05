@echo off

cls

rem You can just comment the welcome screen out, if you want to skip to the main menu.
echo Welcome to a videogame demo, made entirely with batch

echo Thanks for checking it out!

echo If you want to modify it, feel free to! Just make sure to add appropriate credit!
pause

cls

:menu

choice /c SLE /m "Would you like to: Start, Load, or Exit?"

if errorlevel 3 goto exit
if errorlevel 2 goto load
if errorlevel 1 goto start

:start
cls
echo Starting Game...

echo Deleting previous save...
del 1.sav

echo Writing to 1.sav

echo *area*>> 1.sav

echo house>> 1.sav

echo *items>> 1.sav

echo none>> 1.sav

echo *health>> 1.sav

echo 100>> 1.sav

echo Finished Writing

echo Going back to menu...
pause
cls
goto menu

:load
echo "Loading data from text file... (REMEMBER!!! IF YOU DELETE 1.sav YOUR SAVE WILL BE DELETED!!!!)"

setlocal enabledelayedexpansion
set i=0

for /f "tokens=* delims=" %%x in (1.sav) do (
    set /a i+=1
    set "line!i!=%%x"
)

goto RunGameWithLoad

:exit
echo Quitting...
echo Are you sure?
pause
exit

:RunGameWithLoad
echo Running game with your save...
cls
goto GameRun

:GameRun
if "!line2!"=="house" (
    echo Welcome Home!
) else (
    echo What did you do to the default save?!
)