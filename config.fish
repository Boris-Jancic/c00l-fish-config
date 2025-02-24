if status is-interactive
    # Commands to run in interactive sessions can go here
end

# ========= Thefuck -> terminal mistake corrector

thefuck --alias | source


# ========= Starship -> more pretty terminal

# Replaces default ls command with more collorfull & descriptive
alias ls "eza --color=always --long --git --icons=always --no-user --tree --level=1"


# ========= Zoxide -> better cd command

# Inits zoxide if it was not initialized
if command -sq zoxide
    zoxide init fish | source
else
    echo 'zoxide: command not found, please install it from https://github.com/ajeetdsouza/zoxide'
end

# Replaces defauld cd command with zoxide
alias z="cd"


# ========= Fzf -> fuzzy finder

eval "$(fzf --fish)"
export FZF_CTRL_T_OPTS="
  --walker-skip .git,node_modules,target
  --preview 'bat -n --color=always --theme=TwoDark {}'
  --bind 'ctrl-/:change-preview-window(down|hidden|)'"


# ========= Kubecolor -> better k8s output

alias kubectl="kubecolor"

# Also works for OpenShift CLI
alias oc="env KUBECTL_COMMAND=oc kubecolor"


# ========= Git aliases

alias glo="git log --graph --oneline --decorate"
alias gs="git status"
alias gp="git pull"
alias ga="git add"
alias gcm="git commit -m"
alias gcam="git commit -am"
alias gc="git checkout"
alias gd="git diff"


# ========= Terraform aliases

alias tf="terraform"
alias tfp="terraform plan"
alias tfa="terraform apply"
alias tfmt="terraform fmt"
