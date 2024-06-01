#!/usr/bin/env zsh

export ZDOTDIR=~/.config/zsh/
# Source ZSH configs
source ${ZDOTDIR}/environment.zsh # Source envvars
source ${ZDOTDIR}/profile.zsh # Source zprofile
source ${ZDOTDIR}/options.zsh # Source zsh options
source ${ZDOTDIR}/compinit.zsh # Source completion conf
source ${ZDOTDIR}/aliases.zsh # Source zsh aliases
source ${ZDOTDIR}/keybinds.zsh # Source zsh keybinds
source ${ZDOTDIR}/functions.zsh # Source custom functions
source ${ZDOTDIR}/zgenom.zsh # Source zgenom for plugins
source ${ZDOTDIR}/keybinds-late.zsh # Source late load keybinds

PROMPT='%F{yellow}%3~%f $ '

