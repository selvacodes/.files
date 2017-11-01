#liquidprompt
[[ $- = *i* ]] && source ~/liquidprompt/liquidprompt


# Setting ag as the default source for fzf
export FZF_DEFAULT_COMMAND='ack -g ""'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(fasd --init posix-alias zsh-hook)"
#alias a='fasd -a'        # any
#alias s='fasd -si'       # show / search / select
#alias d='fasd -d'        # directory
#alias f='fasd -f'        # file
#alias sd='fasd -sid'     # interactive directory selection
#alias sf='fasd -sif'     # interactive file selection
#alias z='fasd_cd -d'     # cd, same functionality as j in autojump
#alias zz='fasd_cd -d -i' # cd with interactive selection

alias v='f -e vim' # quick opening files with vim


