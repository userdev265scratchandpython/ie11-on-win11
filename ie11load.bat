:: Write the VBScript code to a file
echo Set objIE = CreateObject("InternetExplorer.Application") > random_window.vbs
echo objIE.Visible = True >> random_window.vbs
echo objIE.ToolBar = True >> random_window.vbs
echo objIE.StatusBar = True >> random_window.vbs
echo objIE.MenuBar = True >> random_window.vbs
echo objIE.Resizable = True >> random_window.vbs
echo objIE.Navigate "https://www.google.com/" >> random_window.vbs
echo objShell.AppActivate objIE >> random_window.vbs

:: Run the VBScript with the random color
cscript //nologo random_window.vbs %rand_color%