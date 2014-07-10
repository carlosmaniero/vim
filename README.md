# Basic config
First create a link for vimrc

	ln -s ~/.vim/vimrc ~/.vimrc

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

< C-n > To open and close NERDTree

## Conque (Shell)

:ConqueTerm or :ConqueTermSplit with param bash, eg.:

    :ConqueTermSplit bash
