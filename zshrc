# VI Mode
bindkey -v

# History
setopt HIST_IGNORE_ALL_DUPS SHARE_HISTORY
HISTFILE=~/.zhistory
HISTSIZE=10000
SAVEHIST=10000

# Plugins
source ~/.zsh/plugins.zsh

# Rbenv
eval "$(rbenv init - vim)"

# Aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# Local Overrides
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local
