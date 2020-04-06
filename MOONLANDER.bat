@echo off
title Moon lander
color 1F
if "%1" neq "" ( goto %1)
:Menu
cls
echo 1. Start
echo 2. Credits
echo 3. Exit
set /p answer=Type the number of your option and press enter : 
if %answer%==1 goto Start_1
if %answer%==2 goto Credits
if %answer%==3 goto Exit
:Exit
cls
echo Thanks for playing!
pause
exit /b
:Credits
cls
echo Credits 
echo.
echo Game by Alexdieu
echo Thank you for playing MOON LANDER!
pause
goto Menu
:Start_1
cls
echo July 20, 1969, at 20:17 UTC
echo We are in Apollo Lunar Module Eagle ...
echo If you take the control now , you have a chance to land and be in history books!
set /p answer=Would you like to land(1) or let the computer do it(2)?
if %answer%==1 goto 1
if %answer%==2 goto 2
pause
:2
cls
echo You let the computer do it ...
pause
goto Start_1
:1
echo Prepare to land !
echo Are you ready ?
set /p answer= Type 1 and press Enter to continue.
if %answer%==1 goto MOON
:MOON
set /a num=%random%
if %num% gtr 4 goto MOON
if %num% lss 1 goto MOON
if %num%==1 goto Lost
if %num%==2 goto Win
if %num%==3 goto Win
if %num%==4 goto Win
:Lost
cls
echo You crashed the engine and killed the crew ! . Play again?
pause
goto Menu
:Win
cls
echo You succesfully landed !
set /p answer=Would you like to save ? [y/n]
if %answer%=='y' goto 'Save'
if %answer%=='n' goto 'Start_1'
:Save
goto Start_2
