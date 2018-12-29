.PHONY: install

install:
	echo 'source ~/.vim/init.vim' > ~/.vimrc
	vim +'PlugInstall --sync' +qa
