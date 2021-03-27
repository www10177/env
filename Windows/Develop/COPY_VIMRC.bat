copy %cd%\_vimrc %USERPROFILE%\_vimrc /Y
mkdir %APPDATA%\..\Local\nvim
copy %cd%\init.vim %APPDATA%\..\Local\nvim\init.vim /Y
pause()