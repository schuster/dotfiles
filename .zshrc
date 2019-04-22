alias ls='ls -G'
alias l.='ls -d .*'
alias ll='ls -l'
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt notify
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/schu/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias ls='ls --color=auto'
alias l.='ls -ad .*'
alias ll='ls -lh'
alias pseg='ps -e | grep'
alias dssh='ssh discovery'
alias nussh='ssh ccis'
alias hssh='ssh atlantis'
alias brssh='ssh blackrock'
alias gssh='ssh galicia'
alias r='racket'
alias rt='raco test'

# Prompt
PROMPT='%B[%m %1d]%#%b '
PATH=~/bin:~/.cargo/bin:$PATH

# CLI colors (change directory to be bright blue)
export LSCOLORS=Exfxcxdxbxegedabagacad

# for now, add my built racket's bin directory to the path

export VISUAL=emacs
export PAGER=less
export EDITOR=emacs
export BROWSER=firefox

# add local lib for Rust
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib

# jschuster added on 1 Aug 2016
# see https://wiki.archlinux.org/index.php/font_configuration#Subpixel_rendering
export FT2_SUBPIXEL_HINTING=0 # Disabled

# OPAM configuration, added by "opam init"
source /home/schu/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
