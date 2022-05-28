# Author: Víctor García (aka v1c_gm)

function autoupdate(){
	sudo pacman -Syu archlinux-keyring; paru -Syua; systemctl daemon-reload
	echo "\n\n\t# UPDATING GITHUB REPOSITORIES #"
	for e in ~/Desktop/$USER/repos/*; do echo "\n" && cd $e && pwd && git pull .; done; cd; searchsploit -u
	echo "\n\n\t# UPDATING INTERNAL DATABASE #"
	sudo updatedb
	echo "\n\n\t# AUTOUPDATE SUCCESSFULLY COMPLETED #"
}
