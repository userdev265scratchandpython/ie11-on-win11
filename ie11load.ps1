$fpath = "C:\windows\temp"
$fpath = Read-Host "Enter the path to put the temporary file (default is $fpath, do not put an '\' at the end)"

Write-Host "File writing started"

# Write the VBScript code to a file
$vbsCode = @"
Set objIE = CreateObject("InternetExplorer.Application")
objIE.Visible = True
objIE.ToolBar = True
objIE.StatusBar = True
objIE.MenuBar = True
objIE.Resizable = True
objIE.Navigate "https://www.google.com/"
objShell.AppActivate objIE
"@
$vbsCode | Out-File -FilePath "$fpath\random_window.vbs" | Out-Null

Write-Host "Finished writing file."

Start-Sleep -s 1 | Out-Null

Clear-Host

Write-Host "Opening IE11..."

# Run the VBScript with the random color
Start-Process -FilePath "C:\Windows\System32\cscript.exe" -ArgumentList "//nologo", "$fpath\random_window.vbs" -NoWait | Out-Null

Write-Host "Opened IE11, cleaning up..."

Remove-Item -Path "$fpath\random_window.vbs" | Out-Null

Clear-Host

Write-Host "Press any key to quit the terminal"
$null = Read-Host
