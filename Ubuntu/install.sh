sudo apt-get install git curl
sudo apt-get install zsh vim tmux 
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp .zshrc ~
cp .vimrc ~
cp .tmux.conf ~
vim +PluginInstall +qall

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
