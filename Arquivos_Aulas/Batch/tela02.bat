@echo off
title tela02.bat
mode 60,20
color 09
:inicio
cls
echo.
echo ==================================
echo           MENU PRINCIPAL
echo ==================================
echo [O]cultar Arquivos                            
echo [E]xibir Arquivos                           
echo [R]etornar a Tela 01                                        
echo ==================================
set /p op=Digite a opcao desejada :
if /i %op% == o (goto:ocultar)
if /i %op% == e (goto:exibir)
if /i %op% == r (goto:tela01.bat) else (
    echo.
    echo ------------------------
    echo     OPCAO INVALIDA!
    echo ------------------------
    pause > null
    goto:inicio)

:ocultar
    set /p ext=Digite a extensao do arquivo a ser ocultado
    attrib *.%ext% +r +h
    echo.
    echo -----------------------------------
    echo  Arquivos Ocultados com Sucesso!!!
    echo -----------------------------------
    pause > null
    goto:inicio

:exibir
    set /p ext=Digite a extensao do arquivo a ser ocultado
    attrib *.%ext% -r -h
    echo.
    echo ----------------------------------
    echo  Arquivos Exibidos com Sucesso!!!
    echo ----------------------------------
    pause > null
    goto:inicio
