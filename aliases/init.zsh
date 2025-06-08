version=$(lsb_release -sc)
#Readability aliases
alias lss='ls -alh --color=auto'
alias mount='mount |column -t'
alias duf='duf -hide special'
alias lsblk='lsblk -e 7'
alias bat=batcat
alias ncdu='ncdu --color dark'

#Shell Function aliases
alias dirs="dirs -v"
alias h='history'
alias jb='jobs -l'
alias reload=". ~/.zshrc"

#shortcuts aliases
alias ping='ping -c 5'
alias ax="chmod a+x"
alias wmip="curl icanhazip.com"

alias vim=nvim

#git aliases
alias gitS='git status'
alias gitL='git log'
alias gitD='git diff'
alias gitC='git commit -a'

#Apt aliases
if [ $version = "jammy" ]; then
  alias aptup="sudo nala upgrade"
else
  alias aptup="sudo nala full-upgrade"
fi
alias aptrm="sudo nala autopurge && sudo apt autoclean"

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

#yt-dlp
alias marc='yt-dlp --embed-metadata --parse-metadata "playlist_index:%(track_number)s" -x --audio-format mp3 --audio-quality 5 --embed-thumbnail'
