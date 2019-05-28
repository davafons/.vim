.PHONY: install, curl, gtags

simple:
	@echo 'source ~/.vim/init.vim' > ~/.vimrc
	@echo 'Checking if curl is installed...'
	@echo 'Created ~/.vimrc file. Installing pluggins...'
	vim +'PlugInstall --sync'
