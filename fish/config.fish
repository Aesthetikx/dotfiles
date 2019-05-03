set -x BROWSER firefox

abbr -a ga git add
abbr -a gco git checkout
abbr -a gl git pull
abbr -a gpflo git push --force-with-lease origin
abbr -a gst git status

function fish_mode_prompt; end

function my_key_bindings
  fish_vi_key_bindings
  bind -M insert \cf accept-autosuggestion
end

set -g fish_key_bindings my_key_bindings
