@echo off
title PROD
mode 50,15
color 09
:multiverse
    cls
    echo.
    echo ================================
    echo           Pacote Office
    echo ================================
    echo [W]ord
    echo [E]xcel
    echo [A]ccess
    echo [P]ower Point
    echo [R]etornar ao Menu
    echo ================================

    set /p op=Selecione o programa desejado: 
    if /i %op% == w (goto:word)
    if /i %op% == e (goto:excel)
    if /i %op% == a (goto:access)
    if /i %op% == p (goto:power)
    if /i %op% == r (call menu.bat) else (
        echo.
        echo --------------------------------
        echo         OPCAO INVALIDA!
        echo --------------------------------
        pause > nul
        goto:multiverse)

:word
    start winword.exe
    goto:multiverse

:excel
    start excel.exe
    goto:multiverse

:access
    start msaccess.exe
    goto:multiverse

:power
    start powerpnt.exe
    goto:multiverse