#liquidprompt
[[ $- = *i* ]] && source ~/liquidprompt/liquidprompt


# Setting ag as the default source for fzf
export FZF_DEFAULT_COMMAND='ack -g ""'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
