# Disable welcome message
set -g fish_greeting

# Shortcuts
alias icloud="$HOME/Library/Mobile\ Documents/com\~apple\~CloudDocs/"

alias ..="cd .."
alias ...="cd ../../"

alias ga="git add"
alias gd="git diff"
alias grm="git rm"
alias gca="git commit -a -m"
alias gcm="git commit -m"
alias gst="git status"
alias gpl="git pull"
alias gp="git push"
alias gcob="git checkout -b"
alias gl="git log"

alias vim='bob run nightly'

# Eza setup 
alias lsd="eza --icons --group-directories-first --color=always -1"
alias ll="eza -lah --icons --group-directories-first --color=always"

# fzf config 
fzf_configure_bindings --directory=\cT

# Lazygit 
alias lg='lazygit'

alias srfish='source ~/.config/fish/config.fish'
alias edfish='vim ~/dotfiles/fish/.config/fish/config.fish'

# alias srvim='source ~/.config/nvim/init.lua'
alias edvim='vim ~/dotfiles/nvim/.config/nvim/init.lua'

alias srtmux='source ~/.tmux.conf'
alias edtmux='vim dotfiles/tmux/.tmux.conf'
