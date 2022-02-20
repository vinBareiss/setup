#!/bin/bash
echo ${SETUPSCRIPT_RUN}
if ! [[ -z ${SETUPSCRIPT_RUN} ]]; then
	echo "I detected that this script has probatly allready been run on this system. Do you want to continue anyway? [y,N]"
	read input
	if [[ $input != y ]]; then
		echo "Exiting"
	fi
else
	export SETUPSCRIPT_RUN=true
fi


echo "Setting up SSH Keys"



echo "Setting up GPG Keys"



echo "Setting up Vim (this will override vimrc)"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cat ./vimrc > ~/.vim/vimrc

echo "Setting up TMUX (this will override tmux.conf)"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cat ./tmux > ~/.tmux/tmux.conf

echo "Writing to bashrc"

cat ./bashrc >> ~/.bashrc

