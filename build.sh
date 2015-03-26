#!/bin/bash

rm -rf ./dotfiles
mkdir ./dotfiles
cp -R ~/.dotfiles/vim ./dotfiles
cp -R ~/.dotfiles/vimrc ./dotfiles/vimrc

docker build -t rschmukler/vim .;
