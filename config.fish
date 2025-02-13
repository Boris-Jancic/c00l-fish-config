if status is-interactive
    # Commands to run in interactive sessions can go here
end

thefuck --alias | source

# ~/.config/fish/config.fish

# Initializes starship for more pretty terminal
starship init fish | source

# Replaces default ls command with more collorfull & descriptive
alias ls "eza --color=always --long --git --no-filesize --icons=always --no-user --tree --level=2"
