@echo OFF
:: To delete a single file name.txt
DEL D:\name.txt

:: To delete all the files of .txt extensions and ask for confirmation before deleting
DEL /p/s D:\*.txt

:: Remove \p to delete without confirmation
DEL /s D:\*.txt