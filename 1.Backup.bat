@echo off
rem Get the datetime in a format that can go in a filename.
set _my_datetime=%date%
set _my_datetime=%_my_datetime: =_%
set _my_datetime=%_my_datetime::=%
set _my_datetime=%_my_datetime:/=_%
set _my_datetime=%_my_datetime:.=_%

echo %_my_datetime%

"c:\program files\winrar\rar.exe" a -r C:\Backup\archive_%_my_datetime%.rar C:\toBackup\*.*

Pause
