@echo off
:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params= %*
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------    


:Automatic
echo =====Remove OneDrive=====
%SystemRoot%\SysWOW64\OneDriveSetup.exe /uninstall


echo =====Installing CentBrowser=====
curl http://static.centbrowser.com/installer_64/centbrowser_4.2.9.152_x64.exe > centbrowser_4.2.9.152_x64.exe
.\centbrowser_4.2.9.152_x64.exe --cb-auto-update


echo =====Installing  Steam=====
curl https://steamcdn-a.akamaihd.net/client/installer/SteamSetup.exe > Steam.exe
Steam.exe /S

:--------------------------------------    
:Manually

ECHO ====Remember TG=====
REM Manually Download and Install
Curl -L  "https://telegram.org/dl/desktop/win" > TG.exe


echo =====Remember SublimeText=====
REM Manually Download and Install
Curl -L -O "https://download.sublimetext.com/Sublime%20Text%20Build%203211%20x64%20Setup.exe"

echo =====Remember NextCloud=====
Curl -L  https://download.nextcloud.com/desktop/releases/Windows/latest > NC.exe



echo ==Notion ==
Curl -O -L https://desktop-release.notion-static.com/Notion%20Setup%202.0.8.exe 


echo ==putty==
Curl -O -L https://the.earth.li/~sgtatham/putty/latest/w64/putty-64bit-0.73-installer.msi

ECHO ==SourceTree==
Curl -L https://product-downloads.atlassian.com/software/sourcetree/windows/ga/SourceTreeSetup-3.3.8.exe > SourceTree.exe
