@echo off
title LOGIN
mode 50,15
color 09
:goldenage
    cls
    echo.
    echo ==============================
    echo            LOGIN
    echo ==============================
    echo.
    set /p user=USUARIO:
    if /i %user% == jonas (set /p pass=SENHA:) else (
        echo.
        echo -----------------------
        echo     LOGIN INVALIDO!
        echo -----------------------
        pause > null
        goto:goldenage)
    )
    if /i %pass% == euclides (call menu.bat) else (
            echo.
        echo -----------------------
        echo     LOGIN INVALIDO!
        echo -----------------------
        pause > nul
        goto:goldenage)