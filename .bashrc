# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# Default editor
export EDITOR=nvim
export VISUAL=nvim
PATH=$PATH:$HOME/.local/bin


PS1='\W > '

read()
{
	zathura --fork "$1"
}

discord()
{
	cd ~/webapp/discord-linux-x64/
	./discord & disown
	exit
}

teams()
{
	cd ~/webapp/Teams-linux-x64/
	./Teams & disown
	exit
}

doujinfix()
{
	mv *01.png 01.png ; mv *01.jpg 01.jpg  ; mv *02.jpg 02.jpg  ; mv *02.png 02.png ; mv *03.jpg 03.jpg  ; mv *03.png 03.png ; mv *04.jpg 04.jpg  ; mv *04.png 04.png ; mv *05.jpg 05.jpg  ; mv *05.png 05.png ; mv *06.jpg 06.jpg  ; mv *06.png 06.png ; mv *07.jpg 07.jpg  ; mv *07.png 07.png ; mv *08.jpg 08.jpg  ; mv *08.png 08.png ; mv *09.jpg 09.jpg  ; mv *09.png 09.png
}

