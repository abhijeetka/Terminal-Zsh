#!/bin/bash

xcode-select --install
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts


echo "Installing Nerd Fonts"
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font

echo " Installing Knack font"
wget https://github.com/enricobacis/.dotfiles/blob/master/osx-fonts/Library/Fonts/Knack%20Regular%20Nerd%20Font%20Complete.ttf

echo "Installation is Done, Please go through the README.MD"

