echo off

powershell ./BeHappy.ps1
del *.zip
del *.7z
del *.rar

for /f "delims=" %%i in ('dir /B /AD') do (
    echo %%i
    move "%%i" ../
)

pause