set ANDROID_HOME /opt/android-sdk-update-manager/
set PATH $HOME/.local/bin $HOME/.rbenv/bin $HOME/.rbenv/shims $ANDROID_HOME/tools/ $ANDROID_HOME/platform-tools/ $HOME/.bin $PATH

set -x BROWSER firefox

abbr -a l ls -l
abbr -a v vim

# Rails Abbreviations
abbr -a be bundle exec
abbr -a  migrate "bundle exec spring rails db:migrate"
abbr -a  prepare "bundle exec spring rails db:test:prepare"
abbr -a  rollback "bundle exec spring rails db:rollback"
abbr -a  routes "bundle exec spring rails routes"
abbr -a  m "migrate"
abbr -a  rk "rake"
abbr -a  s "env RAILS_ENV=test spring rspec"
abbr -a  rs "bundle exec spring rails s"
abbr -a  rc "bundle exec spring rails c"

# Git Abbreviations
abbr -a g git
abbr -a ga git add
abbr -a gaa git add --all
abbr -a gb git branch
abbr -a gba git branch -a
abbr -a gc git commit -v
abbr -a gc! git commit -v --amend
abbr -a gca git commit -v -a
abbr -a gca! git commit -v -a --amend
abbr -a gcl git config --list
abbr -a gclean "git reset --hard ;and git clean -dfx"
abbr -a gcm git checkout master
abbr -a gcmsg git commit -m
abbr -a gco git checkout
abbr -a gcount git shortlog -sn
abbr -a gcp git cherry-pick
abbr -a gd git diff
abbr -a gdc git diff --cached
abbr -a gl git pull
abbr -a glg git log --stat --max-count=10
abbr -a glgg git log --graph --max-count=10
abbr -a glgga git log --graph --decorate --all
abbr -a glggg git log --oneline --quiet
abbr -a glo git log --oneline --decorate --color
abbr -a glog git log --oneline --decorate --color --graph
abbr -a gm git merge
abbr -a gp git push
abbr -a gpfl git push --force-with-lease
abbr -a gpflo git push --force-with-lease origin
abbr -a gpo git push origin
abbr -a gpom git push origin master
abbr -a gr git remote
abbr -a grba git rebase --abort
abbr -a grbc git rebase --continue
abbr -a grbi git rebase -i
abbr -a grh git reset HEAD
abbr -a grhh git reset HEAD --hard
abbr -a grmv git remote rename
abbr -a grrm git remote remove
abbr -a grset git remote set-url
abbr -a grup git remote update
abbr -a grv git remote -v
abbr -a gss git status -s
abbr -a gst git status
abbr -a gup git pull --rebase
abbr -a gwc git whatchanged -p --abbrev-commit --pretty=medium
abbr -a gwl git worktree list

function fish_mode_prompt; end

function my_key_bindings
  fish_vi_key_bindings
  bind -M insert \cf accept-autosuggestion
end

set -g fish_key_bindings my_key_bindings
