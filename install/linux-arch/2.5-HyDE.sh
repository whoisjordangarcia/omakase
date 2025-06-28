if [ ! -d "$HOME/HyDE" ]; then
	git clone --depth 1 https://github.com/HyDE-Project/HyDE ~/HyDE
	cd ~/HyDE/Scripts || exit
	./install.sh
else
	echo "HyDE repository already exists in $HOME/HyDE"
fi
