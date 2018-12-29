.PHONY: install, curl

install: curl
	@echo 'source ~/.vim/init.vim' > ~/.vimrc
	@echo 'Checking if curl is installed...'
	@echo 'Created ~/.vimrc file. Installing pluggins...'
	vim +'PlugInstall --sync'

curl:
ifeq (, $(shell which curl))
	@echo "Couldn't locate curl, installing wth 'sudo apt install curl'"
	sudo apt install curl
endif
