#!/bin/sh
#
# Install dotfiles

DOTFILES=$(cd $(dirname $0); pwd -P)

# editor config ----------------------------------------------------------------------

ln -sb $DOTFILES/.editorconfig $HOME


# git --------------------------------------------------------------------------------

ln -sb $DOTFILES/.gitconfig $HOME


# npm --------------------------------------------------------------------------------

ln -sb $DOTFILES/.npmrc $HOME


# powerline --------------------------------------------------------------------------

mkdir -p $HOME/.config
ln -sb $DOTFILES/.config/powerline $HOME/.config

# ruby gems --------------------------------------------------------------------------

ln -sb $DOTFILES/.gemrc $HOME

# shell ------------------------------------------------------------------------------

ln -sb $DOTFILES/.profile $HOME
ln -sb $DOTFILES/.bashrc $HOME
ln -sb $DOTFILES/.bash_aliases $HOME


# tmux -------------------------------------------------------------------------------

ln -sb $DOTFILES/.tmux.conf $HOME


# vim --------------------------------------------------------------------------------

ln -sb $DOTFILES/.vimrc $HOME
ln -sb $DOTFILES/.vim $HOME
