# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# XDG Base Directory Specification
# export XDG_DATA_HOME="$HOME/.local/share"
# export XDG_CONFIG_HOME="$HOME/.config"
# export XDG_STATE_HOME="$HOME/.local/state"
# export XDG_CACHE_HOME="$HOME/.cache"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# FZF Catppuccin Mocha Theme
export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

# pfetch
# https://github.com/Gobidev/pfetch-rs
# export PF_CUSTOM_LOGOS="/home/stephan/.config/pfetch/custom_logo"
# pfetch

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME=""

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Add new line to prompt after command
precmd() { precmd() { echo } }

# User configuration

# ZSH Syntax Highlighting
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#9399b2'

# Catppuccin Mocha
source "$HOME/.config/zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh"

source "$ZSH/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

alias icat="kitten icat"
alias cat="bat"
alias code="vscodium --ozone-platform=wayland"
alias c="clear"
alias update="yay -Syu && flatpak update -y && flatpak uninstall --unused && sudo snap refresh"
alias l='exa -lah'
alias ls="colorls"
alias what="apropos"
alias aws-status="aws sts get-caller-identity"
alias tf="terraform"
alias glog="git log --all --decorate --oneline --graph"
alias pre='selected=$(fzf -m --preview="bat --color=always {}") && [ -n "$selected" ] && nvim "$selected"'

# NGINX
alias nginxstart="sudo systemctl start nginx"
alias nginxrestart="sudo systemctl restart nginx"
alias nginxstatus="sudo systemctl status nginx"
alias nginxstop="sudo systemctl stop nginx"

# Apache
alias apachestart="sudo systemctl start httpd"
alias apachestop="sudo systemctl stop httpd"
alias apacherestart="sudo systemctl restart httpd"
alias apachestatus="sudo systemctl status httpd"

# MySQL
alias mysqlstart="sudo systemctl start mariadb"
alias mysqlstop="sudo systemctl stop mariadb"
alias mysqlrestart="sudo systemctl restart mariadb"
alias mysqlshell="sudo mysql -u root -p"
alias mysqlstatus="sudo systemctl status mariadb"

# PostgreSQL
alias psqlstart="sudo systemctl start postgresql"
alias psqlstop="sudo systemctl stop postgresql"
alias psqlrestart="sudo systemctl restart postgresql"
alias psqlshell="sudo -u postgres psql"
alias psqlstatus="sudo systemctl status postgresql"

# Tmuxifier
export PATH="$HOME/.tmuxifier/bin:$PATH"

# Spicetify
export PATH=$PATH:/home/stephan/.spicetify

# Luarocks
export PATH="$HOME/.local/share/nvim/lazy-rocks/bin:$PATH"

# Perl
PATH="/home/stephan/perl5/bin${PATH:+:${PATH}}"
export PATH
PERL5LIB="/home/stephan/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"
export PERL5LIB
PERL_LOCAL_LIB_ROOT="/home/stephan/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"
export PERL_LOCAL_LIB_ROOT
PERL_MB_OPT="--install_base \"/home/stephan/perl5\""
export PERL_MB_OPT
PERL_MM_OPT="INSTALL_BASE=/home/stephan/perl5"
export PERL_MM_OPT

# Oh-My-Posh
# eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/themes/catppuccin_mocha.omp.json)"

# Mise
eval "$(~/.local/bin/mise activate zsh)"

# Tmuxifier
eval "$(tmuxifier init -)"

# Starship
eval "$(starship init zsh)"
