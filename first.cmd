echo hello world
pause

@echo off

:: to can use global variables
SETLOCAL ENABLEDELAYEDEXPANSION

SET SOURCE=<some path>
SET
set /A count=0

echo %SOURCE%

for /r "%SOURCE%" /d %%d in (*) do (
    :: internal variable should be inside !!
    :: it is counting how much subfolders have in source
    set count=!count!+1
    
    :: to copy a file to other directory
    ROBOCOPY "%%d" "%DESTINE%" "%filePatternName%" /NP /Z /XX >> %LOGFILE% 2>&1
)

:: EXIT 0

GOTO end

echo didn't pass here

:end
