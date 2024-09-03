@echo off
cls

echo ie11 reloader for windows(r) 10 and 11

set "fpath=C:\windows\temp"
set /p fpath="Enter the path to put the temporary file (default is %fpath%, do not put an '\' at the end): "

title internet explorer

echo file writing started

:: Write the VBScript code to a file
echo Set objIE = CreateObject("InternetExplorer.Application") > "%fpath%\random_window.vbs"
echo objIE.Visible = True >> "%fpath%\random_window.vbs"
echo objIE.ToolBar = True >> "%fpath%\random_window.vbs"
echo objIE.StatusBar = True >> "%fpath%\random_window.vbs"
echo objIE.MenuBar = True >> "%fpath%\random_window.vbs"
echo objIE.Resizable = True >> "%fpath%\random_window.vbs"
echo objIE.Navigate "https://www.google.com/" >> "%fpath%\random_window.vbs"
echo objShell.AppActivate objIE >> "%fpath%\random_window.vbs"

echo finished writing file.

timeout /t 1 > nul

cls

echo ie11 reloader for windows(r) 10 and 11

echo opening IE11...

:: Run the VBScript with the random color
cscript //nologo "%fpath%\random_window.vbs" %rand_color%

cls

echo ie11 reloader for windows(r) 10 and 11

echo ie11 was opened.
echo press any key when ready to clean up.
pause > nul

echo cleaning up...

del "%fpath%\random_window.vbs"

cls

echo ie11 reloader for windows(r) 10 and 11

echo press any key to quit the terminal

pause > nul

exit
