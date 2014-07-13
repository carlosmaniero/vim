# Basic config
First download and create a link for vimrc

    git clone --recursive https://github.com/carlosmaniero/vim.git .vim
	ln -s ~/.vim/vimrc ~/.vimrc

## Requirements

    $ sudo pip install flake8

# Fonts
To use vim-airline you can download the powerlines-fonts from github and put in your ~/.fonts. 

**If you no have ~/.fonts path**

    git clone https://github.com/Lokaltog/powerline-fonts ~/.fonts

After putting the fonts in ~/.fonts you need clean the font cache.
    
    fc-cache -vf ~/.fonts

If you want use vim in terminal you must configure manually the font in your terminal preference.
By default I use Meslo LG S Regular for Powerline.

# VirtualEnv
For set virtual env you can create a .vim with the project config, eg.:
	
    **project.vim**
	python activate_this = '/path/absolute/to/your/virtualenv/bin/activate_this.py'
	python execfile(activate_this, dict(__file__=activate_this))
    cd /path/to/your/project

To load this file use the "source" command

	:source project.vim

# Useful Shotcuts

## Vim

| Command   | Description                       |
|-----------|-----------------------------------|
| < C-v >   | Enter in visual mode (selction)   |
| < C-y >   | Copy selected content             |
| p         | Paste                             |
| x         | Cut selected content              |
| < C-R > * | Past from clipboard               |
| d         | Delete selected content           |
| dd        | Delete line                       |
| >         | Indent selected content           |
| <         | De-indent selected content        | 


## Autocomplete CSS

That will enable CSS auto-completion in Vim. To use it, press Ctrl + x followed by Ctrl + o while partially typing CSS codes.

## Zen Coding

Start typing and press < C-y > ,

## Python

| Command       | Description               |
|---------------|---------------------------|
| \d            | Go to definition          |
| \g            | Goto assignments          |
| < C-Space >   | AutoComplete              |
| K             | Show documentation        |
| \r            | Rename                    |
| \n            | Show all usages           |

## Git (fugitive)

| Command           | Description                       |
|-------------------|-----------------------------------|
| :Git add < file > | Add a file                        |
| :Git add %        | Add current file                  |
| :GCommit          | Commit                            |
| :Git < command >  | Run a git command                 |

### Conflicts

To resolve commit see this [tutorial](http://vimcasts.org/episodes/fugitive-vim-resolving-merge-conflicts-with-vimdiff/)

## NERDTree (files navigation)

< C-t > To open and close NERDTree

## Conque (Shell)

:ConqueTerm or :ConqueTermSplit with param bash, eg.:

    :ConqueTermSplit bash

