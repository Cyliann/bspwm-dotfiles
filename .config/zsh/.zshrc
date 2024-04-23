source ~/.bashrc
source ~/.profile
source ~/.config/zsh/.zshenv

# The following lines were added by compinstall
zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' file-sort modification
zstyle ':completion:*' group-name ''
zstyle ':completion:*' ignore-parents parent pwd .. directory
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}'
zstyle ':completion:*' menu select=1
zstyle ':completion:*' original true
zstyle ':completion:*' preserve-prefix '//[^/]##/'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' squeeze-slashes true
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle :compinstall filename '/home/cylian/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Lines configured by zsh-newuser-install
HISTFILE=$XDG_CONFIG_HOME/zsh/histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd nomatch
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install

# Custom Variables
EDITOR=nvim
export PATH="$PATH:$HOME/.scripts/:$HOME/.local/share/cargo/bin/"

## Load pure theme
fpath+=$HOME/.config/zsh/pure
ZSH_THEME=pure
autoload -U promptinit
promptinit
prompt pure

# Keybindings
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey "^[[3~" delete-char

# Set zcompdump directory
compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-"$ZSH_VERSION"

# Vim mode
#set -o vi

# Load. Should be last.
source $HOME/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 
#source /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
source $HOME/.config/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

# Load zoxide
eval "$(zoxide init zsh)"
