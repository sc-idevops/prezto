_ZL_CMD=j
alias jj='j -c'      # restrict matches to subdirs of $PWD
alias ji='j -i'      # cd with interactive selection
alias jf='j -I'      # use fzf to select in multiple matches
alias jb='j -b'      # quickly cd to the parent directory

eval "$(lua ~/.zprezto/contrib/z.lua/external/z.lua --init zsh enhanced once echo fzf)"
