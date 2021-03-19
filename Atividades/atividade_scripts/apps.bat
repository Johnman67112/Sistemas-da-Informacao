@echo off
title APPS
mode 50,15
color 09
:new52
    cls
    echo.
    echo ========================================
    echo          Aplicativos do Windows
    echo ========================================
    echo [C]alculadora
    echo [T]eclado Virtual
    echo [W]indows Explorer
    echo [P]aint
    echo [B]loco de Notas
    echo [M]anutencao de Disco
    echo [R]etornar ao Menu
    echo ========================================
    set /p op=Selecione o aplicativo desejado: 
    if /i %op% == c (goto:calc)
    if /i %op% == t (goto:tecl)
    if /i %op% == w (goto:arq)
    if /i %op% == b (goto:blc)
    if /i %op% == p (goto:pnt)
    if /i %op% == m (goto:mdd)
    if /i %op% == r (call menu.bat) else(
        echo.
        echo ---------------------
        echo    OPCAO INVALIDA!
        echo ---------------------
        pause > nul
        goto:new52)

:calc
    start calc.exe
    goto:new52

:tecl
    start osk.exe
    goto:new52

:arq
    start C:\
    goto:new52

:blc
    start notepad.exe
    goto:new52

:pnt
    start mspaint.exe
    goto:new52

:mdd
    cd c:
    start chkdsk
    goto:new52
