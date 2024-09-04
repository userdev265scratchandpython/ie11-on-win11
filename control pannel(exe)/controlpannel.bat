:: creator : userdev265scratchandpython
:: commit date : 04/09/24
:: vertion of the loader script : v1.2
:: made in batch and PowerShell
:: licence : GPL 3.0
:: Use With Caution

@echo off
cls

title control pannel

echo control panel reloader for windows(r) 11

set "fpath=C:\windows\temp"
set /p fpath="Enter the path to put the temporary file (default is %fpath%, do not put an '\' at the end): "

title control panel

echo wait... data is ready but confirmation is needed.
timeout /t 1 -nobreak > nul

echo is this correct?
echo path :  %fpath%
echo press any key to open control panel

pause > nul

echo file downloading started

set "download_url=https://github.com/userdev265scratchandpython/win11-removed-features-restore/raw/main/control%20pannel(exe)/control.zip"

powershell -Command "Invoke-WebRequest -Uri '%download_url%' -OutFile '%fpath%\control.zip'; Expand-Archive -Path '%fpath%\control.zip' -DestinationPath '%fpath%'"

echo opening control panel...

start /wait "%fpath%\control.exe"

echo cleaning up...

del /q "%fpath%\control.zip"

cls

echo closing the terminal...

ping 0.0.0.0 > nul

:loop
exit
goto loop
