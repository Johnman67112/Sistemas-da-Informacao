@echo off
title MENU
mode 50,15
color 09
:silverage
    cls
    echo.
    echo ==============================
    echo         MENU PRINCIPAL
    echo ==============================
    echo.
    echo [P]acote Office
    echo [S]ervicos de Rede
    echo [A]plicativos Windows
    echo [G]erenciamento da Maquina
    echo [E]ncerrar Sessao
    echo [F]inalizar Programa
    echo ==============================
    set /p op=Digite o que deseja fazer: 
    if /i %op% == p (call prod.bat)
    if /i %op% == s (call rede.bat)
    if /i %op% == a (call apps.bat)
    if /i %op% == g (call geren.bat)
    if /i %op% == e (call login.bat)
    if /i %op% == f (exit) else (
        echo.
        echo         OPCAO INVALIDA!
        pause > nul
        goto:silverage)