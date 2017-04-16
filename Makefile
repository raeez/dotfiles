###########
## clean ##
###########
clean:
	rm -rf dot/.vim

pull: pull-dot-vim pull-dot-vimrc pull-dot-zshrc pull-dot-oh-my-zsh pull-lingua
	echo "done"

install: colored-manpages vim zsh
	echo "done"

#######################
## pull dependencies ##
#######################

pull-dot-vim:
	cp -r ~/.vim   dot/
pull-dot-vimrc:
	cp -r ~/.vimrc dot/
pull-dot-zshrc:
	cp -r ~/.zshrc dot/
pull-dot-oh-my-zsh:
	cp -r ~/.zshrc dot/

pull-lingua: pull-italia pull-francais pull-afrikaans pull-english
	echo "done"

pull-italia:
	-cp -r ~/.italia dot/

pull-afrikaans:
	-cp -r ~/.afrikaans dot/

pull-english:
	-cp -r ~/.english dot/

pull-francais:
	-cp -r ~/.francais dot/


##########################
## install dependencies ##
##########################

colored-manpages:
	mkdir ~/.terminfo # && cd ~/.terminfo
	cp themes/mostlike.txt ~/.terminfo/
	tic ~/.terminfo/mostlike.txt
	# add the following to your shell's profile:
	# alias man="TERMINFO=~/.terminfo/ LESS=C TERM=mostlike PAGER=less man"
	
vim:
	cp -r dot/.vim ~
	cp -r dot/.vimrc ~

zsh:
	cp -r dot/.zsh ~
	cp -r dot/.oh-my-zsh ~
