#!/bin/bash
# apt-install which need sudo previleges
sudo_install (){
	sudo apt update
	sudo apt-get install git curl tar -y
	sudo apt-get install zsh vim tmux -y
	sudo apt install htop -y

	# install btop++
	mkdir btop 
	cd btop
	sudo wget https://github.com/aristocratos/btop/releases/latest/download/btop-x86_64-linux-musl.tbz -O btop.tbz
	sudo tar -xjf btop.tbz
	sudo make install
	cd ..
	sudo rm -rf btop
}

# Check if sudo or not
if [[ "$EUID" -eq 0 ]]; then
	echo "Please do not run as sudo"
	echo "Grant root permission when ask for password later"
	exit 1
fi
sudo_install

# use sudo -u $SUDO_USER to make sure run script/bash as user
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp .zshrc ~
cp .vimrc ~
cp .tmux.conf ~
vim +PluginInstall +qall

#Personalize jupyter lab
cd ../jupyter_lab/
bash init.sh
# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
