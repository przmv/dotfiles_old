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

# Plan9 from user space
if [ -d "/usr/local/plan9" ]; then
    export PLAN9=/usr/local/plan9
    PATH=$PATH:$PLAN9/bin
fi


# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# specify the location of Go workspace
if [ -d "$HOME/go" ] ; then
    export GOPATH=$HOME/go
    PATH="$PATH:$GOPATH/bin:/usr/local/go/bin"
fi

# set PATH so it includes npm bin if it exists
if [ -d "$HOME/.node/bin" ] ; then
    PATH="$HOME/.node/bin:$PATH"
fi

# set PATH so it includes ruby gems bin if it exists
if [ -d "$HOME/.gem/ruby/1.9.1/bin" ] ; then
    PATH="$HOME/.gem/ruby/1.9.1/bin:$PATH"
fi

# set JAVA_HOME
export JAVA_HOME="/usr/lib/jvm/java-7-openjdk-amd64/jre"

# set EC2_HOME
export EC2_HOME="/usr/local/ec2/ec2-api-tools-1.7.3.0"
if [ -d $EC2_HOME ] ; then
    PATH=$PATH:$EC2_HOME/bin
fi
