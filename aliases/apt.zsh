#Apt aliases
version=$(lsb_release -sc)
if [ $version = "jammy" ]; then
  alias aptup="sudo nala upgrade"
else
  alias aptup="sudo nala full-upgrade"
fi
alias aptrm="sudo nala autopurge && sudo apt autoclean"
alias aptchk="sudo apt update; sudo apt list --upgradable"
