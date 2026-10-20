# Uncomment the following line if you don't like systemctl's auto-paging feature:
# set -gx SYSTEMD_PAGER

set -gx EDITOR hx

if status is-interactive
    set -g fish_greeting
    command -q bat; and abbr -a cat bat
    command -q hx; and abbr -a vim hx
    if command -q eza
        abbr -a ls eza
        abbr -a ll eza -l
        abbr -a la eza -la
    end

    command -q starship; and starship init fish | source
    command -q fzf; and fzf --fish | source
    # zoxide wants to be initialised last
    command -q zoxide; and zoxide init --cmd cd fish | source
end
