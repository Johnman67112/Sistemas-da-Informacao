@echo off
title adivinhacao
mode 60,20
color 20
:menu
    cls
    echo.
    echo ==========================================================
    echo              BEM VINDO AO JOGO DE ADIVINHACAO
    echo ==========================================================
    echo [1]Jogar
    echo [2]Fechar jogo
    echo ==========================================================
    set /a tentativas=5
    set /p op=Digite a opcao desejada:
    if %op% == 1 (goto:game)
    if %op% == 2 (exit) else (
        echo.
        echo ----------------------------------------------------------
        echo                      OPCAO INVALIDA!
        echo ----------------------------------------------------------
        pause > nul
        goto:menu)

:game
    cls
    if %tentativas% equ 0 (
        echo Acabaram as suas tentativas
        pause > nul
        goto:end)
    echo ----------------------------------------------------------
    echo              Voce tem %tentativas% tentativas
    echo ----------------------------------------------------------
    set /a numero=(%random% %% 50) + 1
    echo %numero%
    set /p chute=Digite o seu chute entre 1 e 50: 
    if %chute% gtr 50 (goto:error)
    if %chute% leq 0 (goto:error)
    if %chute% gtr %numero% (
        echo Digite um numero menor, voce errou!
        set /a tentativas=%tentativas% - 1
        timeout /t 5
        goto:game)
    if %chute% lss %numero% (
        echo Digite um numero maior, voce errou!
        set /a tentativas=%tentativas% - 1
        timeout /t 5
        goto:game)
    if %chute% == %numero% (
        echo Voce acertou!
        echo O numero sorteado foi %numero%
        pause > nul
        goto:end)
    
:end
    echo FIM DE JOGO!
    set /p op=Deseja jogar novamente? [S/N]
    if /i %op% == S (
        set /a tentativas=5
        goto:game) else (goto:menu)
    pause > nul

:error
    echo.
    echo ----------------------------------------------------------
    echo                      OPCAO INVALIDA!
    echo ----------------------------------------------------------
    echo Digite um numero entre 1 e 50
    pause > nul
    goto:game