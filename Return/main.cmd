@echo off

echo Just for exit or numbers
start exit.cmd
echo I received the value: %errorlevel%

echo For strings
set "MyVariable="
call Function.cmd hello
echo MyVariable=%MyVariable%

pause