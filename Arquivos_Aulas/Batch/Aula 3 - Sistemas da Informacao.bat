@echo off
title Aula 3 - Sistemas da Informacao
mode 60,20
color 0a
:inicio
cls
echo.
echo ==================================
echo           MENU PRINCIPAL
echo ==================================
echo [W]ord                            
echo [E]xcel                           
echo [A]ccess                          
echo [P]ower Point                     
echo [I]nternet                        
echo [T]estar Conexao                  
echo [C]alculadora
echo [O]utra Tela                     
echo [F]inalizar Programa              
echo ==================================
set /p op=Digite a opcao desejada :
if /i %op% == o (call tela02.bat)
if /i %op% == w (goto:word)
if /i %op% == e (goto:excel)
if /i %op% == a (goto:access)
if /i %op% == p (goto:power)
if /i %op% == i (goto:web)
if /i %op% == t (goto:teste)
if /i %op% == c (goto:calculo)
if /i %op% == f (exit) else (
    echo.
    echo ------------------------
    echo     OPCAO INVALIDA!
    echo ------------------------
    pause > null
    goto:inicio)

:word
    start winword.exe 
    goto:inicio

:excel
    start excel.exe 
    goto:inicio

:access
    start msaccess.exe
    goto:inicio

:power
    start powerpnt.exe
    goto:inicio

:web
    set /p site=Digite o endereco da pagina:
    start %site%
    goto:inicio

:teste
    set /p testar=Digite o IP da maquina ou endereco da pagina:
    ping %testar% -t
    goto:inicio

:calculo
    start calc.exe
    goto:inicio