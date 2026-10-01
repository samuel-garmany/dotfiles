# My dotfiles

This directory contains the dotfiles for my system.

## Requirements

Ensure you have the following installed on your system

- Git
- Homebrew (or install stow from your package manager and skip ahead)

## Installation

First, check out the dotfiles repo in your $HOME directory using git

~~~
$ git clone git@github.com:samuel-garmany/dotfiles.git ~/dotfiles
$ cd ~/dotfiles
~~~

install the tools in the `Brewfile`, which includes GNU stow

~~~
$ brew bundle
~~~

then use GNU stow to symlink the packages you want on that machine

~~~
$ stow bash git nvim                   # specific tools
$ stow .                               # everything
~~~

