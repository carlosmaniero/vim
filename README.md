# Basic config
First create a link for vimrc

	ln -s ~/.vim/vimrc ~/.vimrc

# VirtualEnv
For set virtual env you can create a .vim with the project config, eg.:
	
	[project.vim]
	python activate_this = '/path/to/you/virtualenv/bin/activate_this.py'
	python execfile(activate_this, dict(__file__=activate_this))

To load this file use the "source" command

	:source project.vim
