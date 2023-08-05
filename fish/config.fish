# Aliases
if test -f ~/.aliases
    source ~/.aliases
end

# Editor
set -x VISUAL nvim
set -x EDITOR nvim

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Use vi mode
fish_vi_key_bindings
bind -M insert \cf accept-autosuggestion # Fix ctrl-f after vi mode

function git_branch_name
    git branch --show-current
end

abbr -a -- s 'RAILS_ENV=test bundle exec spring rspec'
abbr -a -- gcmsg 'git commit -m'
abbr -a -- gpflo 'git push --force-with-lease origin'
abbr -a -- gpflob 'git push --force-with-lease origin (git_branch_name)'
