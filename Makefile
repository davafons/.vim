.PHONY: install, curl, cmake

install: curl cmake
	@echo 'source ~/.vim/init.vim' > ~/.vimrc
	@echo 'Created ~/.vimrc file. Installing pluggins...'
	vim +'PlugInstall --sync'

curl:
ifeq (, $(shell which curl))
	@echo "Couldn't locate curl, installing wth 'sudo apt install curl'..."
	sudo apt install curl
else
	@echo "curl is already installed! Doing nothing."
endif

cmake:
ifeq (, $(shell which cmake))
	@echo "Couldn't locate cmake, installing wth 'sudo apt install cmake'..."
	sudo apt install cmake
else
	@echo "cmake is already installed! Doing nothing."
endif
