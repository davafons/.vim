.PHONY: install, curl, gtags

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

gtags:
	curl -L tamacom.com/global/global-6.6.3.tar.gz -o /tmp/global-6.6.3.tar.gz
	tar xzf /tmp/global-6.6.3.tar.gz -C /tmp
	cd /tmp/global-6.6.3 && ./configure && make && sudo make install

