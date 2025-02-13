if status is-interactive
    # Commands to run in interactive sessions can go here
end

# ========= Thefuck -> terminal mistake corrector 
thefuck --alias | source


# ========= Starship -> more pretty terminal
starship init fish | source

# Replaces default ls command with more collorfull & descriptive
alias ls "eza --color=always --long --git --icons=always --no-user --tree"


# ========= Zoxide -> better cd command

# Inits zoxide if it was not initialized
if command -sq zoxide
    zoxide init fish | source
else
    echo 'zoxide: command not found, please install it from https://github.com/ajeetdsouza/zoxide'
end

# Replaces defauld cd command with zoxide
alias z="ls"


# ========= Fzf -> fuzzy finder

eval "$(fzf --fish)"


# ========= Git aliases
alias glo="git log --graph --oneline --decorate"
alias gs="git status"
alias gcm="git commit -m"
alias gcam="git commit -am"
alias gc="git checkout
