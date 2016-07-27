@echo off
echo Optimizing JPEG ^& PNG Images...
forfiles /s /m *.jpg /c "cmd /c @\"C:\Users\phili\Downloads\jpegtran\jpegtran.exe\" -copy none -optimize -progressive -outfile @file @file"
forfiles /s /m *.png /c "cmd /c @\"C:\Users\phili\Downloads\optipng-0.7.6-win32\optipng-0.7.6-win32\optipng.exe\" -o7 -strip all @file"
echo. & echo Process done!
pause