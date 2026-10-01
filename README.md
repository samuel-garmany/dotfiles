# My dotfiles

This directory contains the dotfiles for my systems, organised as GNU Stow
packages: each top-level folder mirrors `$HOME` for one program.

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
$ stow bash git nvim                   # terminal tools (e.g. WSL)
$ stow niri noctalia                   # desktop only
~~~

If stow reports a conflict with an existing file (such as a distro default
`.bashrc`), move that file aside and run it again.

## Per-machine settings

`.gitconfig` includes `~/.gitconfig.local`, which is not tracked. Put anything
machine-specific there, such as a work email.

Noctalia also reads `~/.config/noctalia/10-private.toml`, which is not tracked.
Location and calendar accounts go there.
