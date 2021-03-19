@echo off
title JOGAR
mode 60,20
color 30
:start
    cls
    echo.
    echo ====================================================
    echo                      JOGAR
    echo ====================================================
    echo [1]Pedra
    echo [2]Papel
    echo [3]Tesoura
    echo [4]Lagarto
    echo [5]Spok
    echo [6]Voltar
    echo ====================================================
    set /p opu=Digite a opcao desejada: 
    if /i %opu% gtr 5 (call menu.bat) else (goto:jogar)

:jogar
    cls
    set /a opb=(%random% %% 5)
    echo ....................................................

    if /i %opu% == %opb%  (
        echo O Bot jogou igual a voce
        echo Deu empate)

    if /i %opu% == 1 (
        echo Voce jogou Pedra
        if /i %opb% == 2 (
            echo O Bot jogou Papel
            echo Voce perdeu!)
        if /i %opb% == 3 (
            echo O bot jogou Tesoura
            echo Voce ganhou!)
        if /i %opb% == 4 (
            echo O bot jogou Lagarto
            echo Voce ganhou!) 
        if /i %opb% == 5 (
            echo O Bot jogou spok
            echo Voce perdeu!))

    if /i %opu% == 2 (
        echo Voce jogou Papel
        if /i %opb% == 1 (
            echo O Bot jogou Pedra
            echo Voce ganhou!)
        if /i %opb% == 3 (
            echo O bot jogou Tesoura
            echo Voce perdeu!)
        if /i %opb% == 4 (
            echo O bot jogou Lagarto
            echo Voce perdeu!) 
        if /i %opb% == 5 (
            echo O Bot jogou spok
            echo Voce ganhou!))

    if /i %opu% == 3 (
        echo Voce jogou Tesoura
        if /i %opb% == 1 (
            echo O Bot jogou Pedra
            echo Voce perdeu!)
        if /i %opb% == 2 (
            echo O bot jogou Papel
            echo Voce ganhou!)
        if /i %opb% == 4 (
            echo O bot jogou Lagarto
            echo Voce ganhou!) 
        if /i %opb% == 5 (
            echo O Bot jogou Spok
            echo Voce perdeu!))

    if /i %opu% == 4 (
        echo Voce jogou Lagarto
        if /i %opb% == 1 (
            echo O Bot jogou Pedra
            echo Voce perdeu!)
        if /i %opb% == 2 (
            echo O bot jogou Papel
            echo Voce ganhou!)
        if /i %opb% == 3 (
            echo O bot jogou Tesoura
            echo Voce perdeu!) 
        if /i %opb% == 5 (
            echo O Bot jogou Spok
            echo Voce ganhou!)) 
            
    if /i %opu% == 5 (
        echo Voce jogou Spok
        if /i %opb% == 1 (
            echo O Bot jogou Pedra
            echo Voce ganhou!)
        if /i %opb% == 2 (
            echo O bot jogou Papel
            echo Voce perdeu!)
        if /i %opb% == 3 (
            echo O bot jogou Tesoura
            echo Voce ganhou!) 
        if /i %opb% == 4 (
            echo O Bot jogou Lagarto
            echo Voce perdeu!))

    echo ====================================================
    echo                        FIM
    echo ====================================================
    set /p op=Deseja jogar novamente? [S/N]
    if /i %op% == S (
        pause > nul
        goto:start) else (
        pause > nul
        call menu.bat)