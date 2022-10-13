#https://github.com/belak/prezto-contrib/blob/master/fzy/init.zsh

#source module files
source "${0:h}/zsh-fzy/zsh-fzy.plugin.zsh" || return 1

#
# Key Bindings
#

bindkey '\ec' fzy-cd-widget
bindkey '^T' fzy-file-widget
bindkey '^@p' fzy-proc-widget
bindkey '^@r' fzy-history-widget
