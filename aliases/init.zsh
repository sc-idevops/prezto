#Readability aliases
#if which exa &> /dev/null; then
#  alias lss='exa -alh'
#else
  alias lss='ls -alh --color=auto'
#fi
alias mount='mount |column -t'
alias df='df -H -x squashfs -x tmpfs -x devtmpfs'
alias duf='duf -hide special'
alias lsblk='lsblk -e 7'
alias bat=batcat
alias ncdu='ncdu --color dark'
alias nvim='vim'

#Shell Function aliases
alias dirs="dirs -v"
alias h='history'
alias jb='jobs -l'
alias reload=". ~/.zshrc"

#shortcuts aliases
alias ping='ping -c 5'
alias ax="chmod a+x"
alias wmip="curl icanhazip.com"

#git aliases
alias gitS='git status'
alias gitL='git log'
alias gitD='git diff'
alias gitC='git commit -a'

#Apt aliases
alias aptup="sudo apt update && sudo apt full-upgrade"
alias aptrm="sudo apt autoremove && sudo apt autoclean"

#Combo aliases
mcd() { mkdir -p "$1"; cd "$1";} #make a directory and cd into it
cls() { cd "$1"; ls;} #cd into directory and list contents
md5check() { md5sum "$1" | grep "$2";} #md5sum file, compare to md5sum as second parameter
shacheck() { sha256sum "$1" | grep "$2"; }

#rsync aliases (from omz rsync)
alias rsync-copy="rsync -avz --progress -h"
alias rsync-move="rsync -avz --progress -h --remove-source-files"
alias rsync-update="rsync -avzu --progress -h"
alias rsync-synchronize="rsync -avzu --delete --progress -h"

#Extra
alias ytd="yt-dlp --restrict-filenames -o '%(uploader)s-%(upload_date)s-%(id)s.%(ext)s'"

#K8 Module
if [[ -f "/usr/bin/kubectl" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/aliases/k8s.zsh"
fi

#security
alias f2b="sudo fail2ban-client status sshd"
