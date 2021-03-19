@echo off
title Aula 01 - Programacao em Batch
mode 60, 20
color 0a
:inicio
cls
echo.
echo =====================================
echo             MENU PRINCIPAL
echo =====================================
echo [1] Executar o Word                   
echo [2] Executar o Excel                  
echo [3] Executar o PowerPoint             
echo [4] Executar o Access                 
echo [5] Acessar a Internet                
echo [6] Testar Conexao de Rede            
echo [7] Calculadora                       
echo [8] Sair do Programa                   
echo =====================================
set /p op=Digite sua opcao:
if %op% == 1 (goto:word)
if %op% == 2 (goto:excel)
if %op% == 3 (goto:power)
if %op% == 4 (goto:acces)
if %op% == 5 (goto:web)
if %op% == 6 (goto:teste)
if %op% == 7 (goto:calculadora)
if %op% == 8 (exit) else (
    echo.
    echo --------------------
    echo  Opcao Invalida !!!
    echo --------------------
    pause > nul
    goto:inicio
)

:word
    start winword.exe
    goto:inicio

:excel
    start excel.exe
    goto:inicio

:power
    start powerpnt.exe
    goto:inicio

:acces
    start msaccess.exe
    goto:inicio

:web
    set /p site=Digite o endereco da pagina:
    start %site%
    goto:inicio

:teste
    set /p testar=Digite o IP da maquina ou endereco da pagina:
    ping %testar% -t
    goto:inicio

:calculadora
    start calc.exe
    goto:inicio