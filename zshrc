# VI Mode
bindkey -v

# Plugins
source ~/.zsh/plugins.zsh

# Rbenv
eval "$(rbenv init - vim)"

# Aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# Local Overrides
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local
