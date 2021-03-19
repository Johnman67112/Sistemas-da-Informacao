@echo off
title Gerenciamento de Arquivos
mode 60,15
color 4f
:inicio
cls
echo.
echo ----------------------------------------------------
echo            GERENCIAMENTO DE ARQUIVOS
echo ----------------------------------------------------
echo [1] Gerar Arquivos
echo [2] Organizar Arquivos
echo [4] Finalizar Programa
echo ----------------------------------------------------
set /p op=Digite a opcao desejada: 
if %op% == 1 (goto:gerar)
if %op% == 2 (goto:organizar)
if %op% == 3 (goto:sair) else (
    echo.
    echo -------------------------
    echo    OPCAO INVALIDA!
    echo -------------------------
    pause > nul
    goto:inicio)

:gerar
    set /p nome_arquivo=Digite o nome do arquivo: 
    set /p qtde=Digite a quantidade de arquivos a serem gerados:
    set /p ext=Digite a extensao do arquivo: 
    c:
    cd\Users\joaov\OneDrive\Desktop
    for /L %%n in (1,1,%qtde%) do echo set dir > %nome_arquivo%%%n.%ext%
    echo.
    echo --------------------------------------------
    echo       ARQUIVOS GERADOS COM SUCESSO!!!
    echo --------------------------------------------
    pause > nul
    goto:inicio

:organizar
    set /p pasta=Digite o nome da pasta a ser criada:
    set /p ext=Digite a extensao do arquivo a ser organizado:
    md %pasta%
    move *.%ext% C:\Users\joaov\OneDrive\Desktop\%pasta%
    echo.
    echo ---------------------------------------
    echo   ARQUIVOS ORGANIZADOS COM SUCESSO!!!
    echo ---------------------------------------
    pause > nul
    goto:inicio

:sair
    set /p finalizar=Deseja realmente sair do programa? [S/N]
    if /i %finalizar% == S (exit) else (
        goto:inicio)