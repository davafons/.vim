.PHONY: install

install:
	@echo 'source ~/.vim/init.vim' > ~/.vimrc
	@echo 'Created ~/.vimrc file. Installing pluggins...'
	vim +'PlugInstall --sync'
