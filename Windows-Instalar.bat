@echo off
color 0F
title Servidor de Gunbound (Feito por Thalles Tutoriais) - Youtube.com/VideosTutoriais
@setlocal enableextensions
@cd /d "%~dp0"


:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
echo Solicitando privilegios de administrador...
goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
set params= %*
echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"

"%temp%\getadmin.vbs"
del "%temp%\getadmin.vbs"
exit /B

:gotAdmin
pushd "%CD%"
CD /D "%~dp0"
:--------------------------------------

::IDENTIFICA SE O PYTHON ESTA INSTALADO, SE SIM LIGA O CONTINUA, SE NAO INSTALA O PYTHON
>nul 2>nul assoc .py
if errorlevel 1 (
title Instale o Python!
color 4F
echo ==============================================================================
echo  O Python nao esta instalado...
echo  Vamos instala-lo, e depois tentamos novamente....
echo ==============================================================================
echo.
echo  Aperte ENTER para baixar o Python!
pause
start "" https://www.python.org/downloads/
echo.
echo  Depois que finalizar a Instalacao do Python volte aqui e aperte ENTER para continuar...
pause
test&cls
Windows-Ligar.bat
)


echo ==============================================================================
echo  Instalando o servidor de Gunbound...
echo ==============================================================================
echo  Verificando requisitos minimos...
echo  Na primeira inicializacao voce precisa de internet
echo ==============================================================================
echo.
py -m pip install --upgrade pip
py -m pip install altgraph==0.16.1
py -m pip install future==0.17.1
py -m pip install macholib==1.11
py -m pip install pefile==2018.8.8
py -m pip install PyInstaller==3.4
py -m pip install pywin32-ctypes==0.2.0
py -m pip install pycryptodome


test&cls

echo ==============================================================================
echo  Servidor de Gunbound (Feito por Thalles Tutoriais) - Youtube.com/VideosTutoriais
echo ==============================================================================
echo  Servidor Instalado, para ligar execute o arquivo: Windows-Ligar.bat
echo ==============================================================================
pause
exit

if errorlevel 1 (
:: DA UM AVISO DE ERRO NO CODIGO
title Erro do Script do Servidor
color 4F
echo.
echo.
echo.
echo ==============================================================================
echo  Verifique acima o codigo e alinha do erro
echo ==============================================================================
echo.
echo Corrija, volte aqui e APERTE ENTER!
pause
test&cls
Windows-Ligar.bat
)
