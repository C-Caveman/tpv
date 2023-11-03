install:
	# apt is only used by Debian-based linux distros.
	# Use whichever package manager works for you.
	sudo apt install gpg dmenu xclip
	sudo cp tpv /usr/bin
