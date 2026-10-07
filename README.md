# dotfiles

This directory contains the dotfiles for my system.

    git clone git@github.com:samuel-garmany/dotfiles.git ~/dotfiles
    cd ~/dotfiles
    stow nvim            # NixOS
    stow nvim git bash   # WSL and anything else

On NixOS only the Neovim config comes from here. Git, the shell and the
desktop are set up in /etc/nixos.

If stow complains about an existing file, move it aside and rerun.

`.gitconfig` includes `~/.gitconfig.local`, which is not tracked. Machine
specific settings go there, like a work email.
