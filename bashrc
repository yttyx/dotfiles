#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH=$PATH:~/.scripts

[[ -f ~/.bash_colours ]] && . ~/.bash_colours

# grep
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'

# edit profiles
alias ebc='nvim ~/.bashrc'
alias edc='cd /opt/source/suckless/dwm && nvim config.h'
alias edst='cd /opt/source/suckless/st && nvim config.h'
alias eic='nvim ~/.config/i3/config'
alias exr='nvim ~/.Xresources'
alias exi='nvim ~/.xinitrc'
alias enc='nvim ~/.config/nvim/init.vim'
alias emc='sudo nvim /etc/mpd.conf'
alias edbc='nvim ~/.dotfiles/install.conf.yaml'

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

# misc
alias vim='nvim'
alias PAGER='less -r'
alias p='pstree -p'
alias xlog='less ~/.local/share/xorg/Xorg.0.log'
alias pg='ping www.google.co.uk'
alias scr='cd ~/.scripts'
alias dk='sudo docker'
alias evt='nvim ~/notes/vim-training'

# systemctl
alias scs='sudo systemctl status'
alias scsg='sudo systemctl status | grep '

# audio
alias spk='speaker-test -D default:PCH -c 2'

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
