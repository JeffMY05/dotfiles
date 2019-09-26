#!/bin/bash
mv ~/.bashrc ~/.bashrc.old
mv ~/.vimrc ~/.vimrc.old
mv ~/.vim ~/.vim.old
mv ~/.tmux.conf ~/.tmux.conf.old
mv ~/.config/ranger/rc.conf ~/.config/ranger/rc.conf.old
dir=`dirname $0`
echo $dir
ln -s $dir/.bashrc ~/.bashrc 
ln -s $dir/.vimrc ~/.vimrc 
ln -s $dir/.vim ~/.vim 
ln -s $dir/.tmux.conf ~/.tmux.conf 
ln -s $dir/rc.conf ~/.config/ranger/rc.conf

if [ "$1" == "-d" ] 
then
    rm ~/.bashrc.old ~/.vimrc.old ~/.vim.old ~/.tmux.conf.old ~/.config/ranger/rc.conf.old -rf
fi