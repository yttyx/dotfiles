#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH=$PATH:~/.scripts

#[[ -f ~/.bash_colours ]] && . ~/.bash_colours
[[ -f ~/dotfiles\gruvbox_256palette.sh ]] && . ~/dotfiles\gruvbox_256palette.sh

# grep
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'

# edit profiles
alias eac='nvim ~/.config/awesome/rc.lua'
alias ebc='nvim ~/.bashrc'
alias edbc='nvim ~/dotfiles/install.conf.yaml'
alias edc='cd /opt/source/suckless/dwm && nvim config.h'
alias edst='cd /opt/source/suckless/st && nvim config.h'
alias egc='nvim ~/.gitconfig'
alias eic='nvim ~/dotfiles/i3/config'
alias exr='nvim ~/.Xresources'
alias exi='nvim ~/.xinitrc'
alias enc='nvim ~/dotfiles/nvim/init.lua'
alias enco='nvim ~/dotfiles/nvim/lua/user/options.lua'
alias enck='nvim ~/dotfiles/nvim/lua/user/keymaps.lua'
alias encl='nvim ~/dotfiles/nvim/lua/user/lsp.lua'
alias encp='nvim ~/dotfiles/nvim/lua/user/plugins.lua'
alias ench='nvim ~/dotfiles/nvim/lua/user/lsp/handlers.lua'
alias emc='sudo nvim /etc/mpd.conf'
alias etc='nvim ~/dotfiles/tmux.conf'


# development
alias esteno='nvim ~/dev/yttyx/stenosysitm'

# history
alias h='history 30'

# ls
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -als'
alias lll='ls -als | less'
alias llx='ls -als  *.hex *.bin'
alias ls='ls --color=auto'
alias lsl='ls --color=auto | less'

# ps
alias ps='ps -e'
alias psg='ps -e | grep'

# pacman
alias pacq='pacman -Qe | grep'

#qmk
alias qmk='cd ~/dev/qmk/qmk_firmware'
alias qmkd='cd ~/dev/qmk/qmk_firmware/keyboards/atreus/keymaps/dvorak_42_key'

#git
alias pushall='for r in `git remote`; do echo "Pushing to " $r; git push $r; done;'

# misc
alias dk='sudo docker'
alias evt='nvim ~/notes/vim-training'
alias PAGER='less -r'
alias p='pstree -p'
alias pg='ping www.google.co.uk'
alias scr='cd ~/.scripts'
alias vim='nvim'
alias tmux='tmux -2'
alias xlog='less ~/.local/share/xorg/Xorg.0.log'

# system
alias update-system='sudo pacman -Syu'
# possible fix if 'invalid or corrupted package' is reported
alias update-keyring='sudo pacman-key --populate archlinux'

# systemctl
alias scs='sudo systemctl status'
alias scsg='sudo systemctl status | grep '

# audio
alias spk='speaker-test -D default:PCH -c 2'
alias music='cd ~/soundfiles && cmus'

# PS1 prompt options
CurrentDirectory="\w"
Username="\u"
HostnameShort="\h"
HostnameFull="\H"
Time12h="\T"
Time12a="\@"
PathShort="\w"
PathFull="\W"
NewLine="\n"
Jobs="\j"

export PS1="$CurrentDirectory) "
export RANGER_LOAD_DEFAULT_RC=false

#if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
#  exec startx
#fi

