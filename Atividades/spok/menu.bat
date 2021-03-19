@echo off
title MENU
mode 60,20
color 70
:start
    cls
    echo.
    echo ====================================================
    echo   BEM VINDO AO ROCK, PAPER, SCISSORS, LIZARD, SPOK
    echo ====================================================
    echo [J]ogar
    echo [S]air
    echo ====================================================
    set /p mod=Escolha a opcao desejada: 
    if /i %mod% == J (call jogar.bat)
    if /i %mod% == S (exit) else (
        echo.
        echo ====================================================
        echo                  OPCAO INVALIDA!!!
        echo ==================================================== 
        pause > nul
        goto:start)