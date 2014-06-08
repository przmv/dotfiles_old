# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's local bin if it exists
# (e.g. powerline is installed there)
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# specify the location of Go workspace
if [ -d "$HOME/go" ] ; then
    export GOPATH=$HOME/go
    PATH="$PATH:$GOPATH/bin"
fi

# add the App Engine Go SDK directory to PATH
if [ -d "/opt/google/go_appengine" ] ; then
    PATH="$PATH:/opt/google/go_appengine"
fi
