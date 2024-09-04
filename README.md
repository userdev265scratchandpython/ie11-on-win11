![image-centered](https://github.com/userdev265scratchandpython/win11-removed-features-restore/blob/81bf951da6ce387d980b611ef968b31b17793233/LOGO.png)

__***informations***__

![icon](https://img.shields.io/badge/projects_count_-2_projects-blue)

![icon](https://img.shields.io/badge/ie11_microsoft_status-outdated-darkred)

![icon](https://img.shields.io/badge/control_pannel_status-deprecated-darkred)

the Windows(r) LEGACY control pannel will not be removed, even tought deprecated.

[IE 11(Internet explorer 11)](https://github.com/userdev265scratchandpython/win11-removed-features-restore/tree/main/ie11)

Discover the 'hidden' IE11 on Windows 11. Microsoft didn't remove it, they just... hid it. This script reveals the 'lost' browser, making it functional again. Available in batch and PowerShell. Warning: IE11 lacks most security patches, making it vulnerable to attacks. Use with caution and avoid running on actual hardware. using virtual machines is recommended. for ie11-dedicated pages, the chromium-based edge has an IE mode, it will keep edge looking like itself but allow ie-dedicated pages to work

____recommended : read "ie11load-warning.md" for informations____

guide to use : open the command prompt(CMD)
run the given IRM command
if you want to put the ie11 starting file on an external media, give the path to that external media and disconnect it before cleanup, else press enter
enjoy IE11 on windows 11

irm command : 
```
powershell -Command "Invoke-WebRequest -Uri https://github.com/userdev265scratchandpython/win11-removed-features-restore/raw/main/ie11/ie11load.bat -OutFile %TEMP%\ie11load.bat" && cmd /c %TEMP%\ie11load.bat && del %TEMP%\ie11load.bat
```

# more to come soon
