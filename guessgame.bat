@echo off
title Guess the Number Game
color 0a

set /a answer=%random% %% 10 + 1
set /a tries=0

:guess
set /a tries+=1
echo.
set /p guess=Guess a number between 1 and 10: 

if "%guess%"=="%answer%" (
    echo.
    echo 🎉 Congratulations! You guessed the number in %tries% tries.
    goto end
)

if "%guess%" GTR "%answer%" (
    echo Too high! Try again.
    goto guess
)

if "%guess%" LSS "%answer%" (
    echo Too low! Try again.
    goto guess
)

:end
echo.
pause
