#!/bin/bash

set -e

echo "Creating ~/.vim directories..."
mkdir -p ~/.vim/autoload ~/.vim/bundle

echo "Installing Pathogen..."
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo "Installing Plugins..."
cd ~/.vim/bundle
git clone git@github.com:godlygeek/tabular.git
git clone git@github.com:ervandew/supertab.git
git clone git@github.com:vim-airline/vim-airline.git
git clone git@github.com:vim-airline/vim-airline-themes.git
git clone git@github.com:ntpeters/vim-better-whitespace.git
git clone git@github.com:bfrg/vim-cpp-modern.git
git clone git@github.com:tpope/vim-fugitive.git
git clone https://github.com/lervag/vimtex

echo "Downloading vimrc..."
curl -LSso ~/.vimrc \
    https://raw.githubusercontent.com/agmariona/vim/master/.vimrc
echo "Done."
