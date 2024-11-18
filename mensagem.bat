@echo off

set /p nome="Ola? Qual é o seu nome? "

set msg="Ola %nome%!"

echo Set objArgs = WScript.Arguments > %temp%\msgbox.vbs
echo MsgBox objArgs(0), 0, "Mensagem de Boas-Vindas" >> %temp%\msgbox.vbs

cscript //nologo %temp%\msgbox.vbs %msg%

del %temp%\msgbox.vbs