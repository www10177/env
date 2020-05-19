@ECHO OFF
ECHO == GIT==
curl  -L https://github.com/git-for-windows/git/releases/download/v2.26.2.windows.1/Git-2.26.2-64-bit.exe > GitSetup.exe
.\GitSetup.exe /VERYSILENT /NORESTART /NOCANCEL /SP- /CLOSEAPPLICATIONS /RESTARTAPPLICATIONS /COMPONENTS="icons,ext\reg\shellhere,assoc,assoc_sh"
setx PATH=%PATH%;C:\Program Files\Git\bin\

ECHO ==GVIM==
curl  -L https://ftp.nluug.nl/pub/vim/pc/gvim82.exe > GVIMSetup.exe
.\GIMSetup.exe /S

ECHO ==Python==
curl -O -Lhttps://www.python.org/ftp/python/3.8.2/python-3.8.2.exe
