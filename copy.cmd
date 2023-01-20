@echo OFF
:: For copying from one drive to another -xyz.txt from D:\ to E:\
COPY D:\source\fileToCopy.txt E:\target\

:: If file has whitepace between name - use double quote
COPY "D:source\file name.txt" E:\target\

:: The batch command XCOPY is similar to COPY command but COPY command copies single file whereas XCOPY command copies entire directories including subdirectories.
XCOPY D:\test.txt to E:\

:: to copy a file to other directory with a good log, used to make backups
ROBOCOPY "%%d" "%DESTINE%" "%filePatternName%" /NP /Z /XX >> %LOGFILE% 2>&1