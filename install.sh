#!/bin/sh
#
# Install dotfiles

DOTFILES=$(cd $(dirname $0); pwd -P)

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


# tmux -------------------------------------------------------------------------------

ln -sb $DOTFILES/.tmux.conf $HOME


# vim --------------------------------------------------------------------------------

ln -sb $DOTFILES/.vimrc $HOME
ln -sb $DOTFILES/.vim $HOME
