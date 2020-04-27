@echo ON
copy %cd%\_vimrc %USERPROFILE%\_vimrc /Y

REM git crlf problem ( Vundle )
git config --global core.autocrlf false
git config --global core.safecrlf true
git config --global core.eol lf

REM Install Solarized ColorScheme
git clone git://github.com/altercation/vim-colors-solarized.git 
copy %cd%\vim-colors-solarized\colors\solarized.vim %USERPROFILE%\vimfiles\colors\solarized.vim /Y

REM Install Vundle
cd %USERPROFILE%
git clone https://github.com/VundleVim/Vundle.vim.git %USERPROFILE%\vimfiles\bundle\Vundle.vim


Echo "Remeber to Install Vundle Packaged in VIM (:PluginInstall) "
pause

