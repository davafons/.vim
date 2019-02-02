.PHONY: install, curl, gtags

install: curl
	@echo 'source ~/.vim/init.vim' > ~/.vimrc
	@echo 'Checking if curl is installed...'
	@echo 'Created ~/.vimrc file. Installing pluggins...'
	vim +'PlugInstall --sync'

curl:
ifeq (, $(shell which curl))
	@echo "Couldn't locate curl, installing wth 'sudo apt install curl'..."
	sudo apt install curl
else
	@echo "curl is already installed! Doing nothing."
endif

gtags:
ifeq (, $(shell which gtags))
	@echo "Couldn't locate gtags, Downloading to /tmp and installing...'"
	sudo apt install libncurses5-dev
	sudo apt install cscope
	sudo apt install exuberant-ctags
	curl -L tamacom.com/global/global-6.6.3.tar.gz -o /tmp/global-6.6.3.tar.gz
	tar xzf /tmp/global-6.6.3.tar.gz -C /tmp
	cd /tmp/global-6.6.3 && ./configure && make && sudo make install
else
	@echo "gtags is already installed! Doing nothing."
endif

