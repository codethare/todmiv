set fish_greeting ""
set -gx TERM xterm-256color

#___________________________________________
#                                     export
set -gx EDITOR nvim
# set -gx PATH node_modules/.bin $PATH
# set -gx PATH $HOME/.config/yarn/global/node_modules/.bin $PATH
set -gx fish_runtime_path /usr/bin/fish

set -x mv
set -x cp
set -x mkdir

#___________________________________________
#                                     theme
set -g theme_display_user no
set -g theme_hide_hostname no
# set -g theme_hostname always

#___________________________________________
#                                   shortcut
alias ls "ls -ltch --color=auto"

if type -q exa
  alias l "exa -h --icons --group-directories-first --color=always"
  alias ll "l -l --time-style=long-iso"
  alias lll "l -l --time-style=full-iso -s modified"
  alias la "l -a"
  alias lla "ll -a"
  alias lls "ll -s size"
  alias llas "lla -s size"
  alias llla "lll -a"
  alias tree "exa --tree -alh --icons --color=always"
end

alias .. "cd .."
alias ... "cd ../.."
alias .... "cd ../../.."
alias ..... "cd ../../../.."

# Improve du, df
alias du "du -h"
alias df "df -h"

# Improve od for hexdump
alias od "od -Ax -tx1z"
alias hexdump "hexdump -C"

alias g "git"
alias px "proxychians"

alias dxproxy "export http_proxy=socks5://127.0.22.19:3215 && export https_proxy=socks5://127.0.22.19:3215"

alias ":q" "exit"

# Jump
alias box "cd $HOME/build/debox"

alias nvimEdit "cd $HOME/.config/nvim/"
alias user "cd $HOME/build/blox/user/"
alias dot "cd $HOME/build/dot/"
alias appGit "cd $HOME/build/gt/Mindest"
alias homeGit "cd $HOME/build/gt/homepage"
alias dayGit "cd $HOME/build/gt/daybyday"
alias dayPost "cd $HOME/build/gt/daybyday/src/pages/posts/"
alias staplerGit "cd $HOME/build/gt/stapler"
alias testDay "cd $HOME/build/gt/testDay"
alias blog "cd $HOME/build/blox/"
alias fwork "cd $HOME/build/firefox-extensions-test/vimfox"
alias fworklook "cd $HOME/build/project/extensions/"
alias box "cd $HOME/build/debox"
alias chattest "cd $HOME/build/blox/project/pages/chatvala"
alias pro "cd $HOME/build/blox/pro/"
alias autoGPT "cd $HOME/build/blox/pro/autoGPT"

alias http "python -m http.server 9981"

alias fishEdit "vim $HOME/.config/fish/config.fish"

command -qv nvim && alias vim nvim

