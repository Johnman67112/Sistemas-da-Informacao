@echo off
title REDE
mode 50,15
color 09
:crisis
    cls
    echo.
    echo ====================================
    echo         Servicos de Rede
    echo ====================================
    echo [N]avegar na Internet
    echo [T]estar Conexao de Rede
    echo [O]bter o IP da Maquina
    echo [R]etornar ao Menu
    echo ====================================
    set /p op=Selecione o servico desejado:
    if /i %op% == n (goto:web)
    if /i %op% == t (goto:teste)
    if /i %op% == o (goto:endereco)
    if /i %op% == r (call menu.bat) else (
        echo.
        echo ------------------------------------
        echo           Opcao Invalida!
        echo ------------------------------------
        pause > nul
        goto:crisis)
    
:web
    set /p site=Digite o endereco da pagina:
    start %site%
    goto:crisis

:teste 
    set /p testar=Digite o IP da maquina ou endereco da pagina: 
    ping %testar%
    goto:crisis

:endereco
    ipconfig
    pause > nul
    goto:crisis
