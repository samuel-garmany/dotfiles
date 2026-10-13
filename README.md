# My dotfiles

This directory contains the dotfile for my system

## Requirements

Ensure you have the following installed on your system

- Git
- Stow

## Installation

First, check out the dotfiles repo in your $HOME directory using git

~~~
git clone git@github.com:samgarmany/dotfiles.git
cd dotfiles
~~~

then use GNU stow to create symlinks

~~~
stow <package>
# for example
stow nvim
~~~

to remove a symlink use 

~~~
stow -D <package>
~~~

## Distrobox

`stow distrobox` puts one manifest per container in `~/.config/distrobox`.
From the [distrobox assemble docs](https://github.com/89luca89/distrobox/blob/main/docs/usage/distrobox-assemble.md):

> You can specify a custom path for the file using

~~~
distrobox assemble create --file ~/.config/distrobox/tex.ini
~~~

> By default, `distrobox assemble` will replace a container only if `replace=true`
> is specified in the manifest file.
