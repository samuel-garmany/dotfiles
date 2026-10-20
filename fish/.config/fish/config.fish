# Uncomment the following line if you don't like systemctl's auto-paging feature:
# set -gx SYSTEMD_PAGER

if status is-interactive
    set -g fish_greeting
    command -q bat; and alias cat=bat
    command -q nvim; and alias vim=nvim
    if command -q eza
        alias ls=eza
        alias ll="eza -l"
        alias la="eza -la"
    end

    command -q starship; and starship init fish | source
    command -q fzf; and fzf --fish | source
    # zoxide wants to be initialised last
    command -q zoxide; and zoxide init --cmd cd fish | source
end
