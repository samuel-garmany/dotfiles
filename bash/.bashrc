# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
command -v bat >/dev/null 2>&1 && alias cat=bat
command -v nvim >/dev/null 2>&1 && alias vim=nvim
if command -v eza >/dev/null 2>&1; then
  alias ls=eza
  alias ll="eza -l"
  alias la="eza -la"
fi

command -v starship >/dev/null 2>&1 && eval "$(starship init bash)"
command -v zoxide >/dev/null 2>&1 && eval "$(zoxide init --cmd cd bash)"
command -v fzf >/dev/null 2>&1 && eval "$(fzf --bash)"

if command -v yazi >/dev/null 2>&1; then
  y() {
    local tmp cwd
    tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
    command yazi "$@" --cwd-file="$tmp"
    cwd="$(command cat -- "$tmp")"
    if [ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && [ -d "$cwd" ]; then
      cd -- "$cwd"
    fi
    rm -f -- "$tmp"
  }
fi
