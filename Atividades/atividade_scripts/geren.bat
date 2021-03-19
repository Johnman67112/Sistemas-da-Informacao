@echo off
title GEREN
mode 50,15
color 09
:rebirth
    cls
    echo.
    echo ======================================
    echo       Gerenciamento da Maquina
    echo ======================================
    echo [DM]Desligar a Maquina
    echo [RM]Reiniciar a Maquina
    echo [HM]Hibernar a Maquina
    echo [R]etornar ao Menu
    echo ======================================
    set /p op=Selecione o que deseja: 
    if /i %op% == dm (shutdown -s)
    if /i %op% == rm (shutdown -r)
    if /i %op% == hm (shutdown -h)
    if /i %op% == r (call menu.bat) else (
        echo.
        echo ----------------------------
        echo       OPCAO INVALIDA
        echo ----------------------------
        pause > nul
        goto:rebirth
    )

