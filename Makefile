NOW='generic'
-include $(PROJ)/mkscripts/timestamp.mk

###########
## clean ##
###########

save: save-rc pull-dot-gitconfig pull-dot-vim pull-dot-vimrc pull-dot-zshrc pull-dot-oh-my-zsh
	-git rm -rf dot/.vim/backup/*
	-rm -rf dot/.vim/backup/*

install: fonts colored-manpages vim zsh plan gitconfig
	echo "done"

#######################
## save local config ##
#######################

save-rc: pull-dot-vimrc pull-dot-gitconfig pull-dot-zshrc

pull-dot-vim:
	cp -r ~/.vim   dot/
	-rm -rf dot/.vim/back/*
	-git rm -rf dot/.vim/back/*
pull-dot-vimrc:
	cp -r ~/.vimrc dot/
	cp -r ~/.gvimrc dot/
pull-dot-gitconfig:
	cp -r ~/.gitconfig dot/
pull-dot-zshrc:
	cp -r ~/.zshrc dot/
pull-dot-oh-my-zsh:
	cp -r ~/.zshrc dot/

##########################
## install dependencies ##
##########################

colored-manpages:
	-mkdir -p ~/.terminfo # && cd ~/.terminfo
	-cp themes/mostlike.txt ~/.terminfo/
	-tic ~/.terminfo/mostlike.txt
	# add the following to your shell's profile:
	# alias man="TERMINFO=~/.terminfo/ LESS=C TERM=mostlike PAGER=less man"

bak-dotfiles-dir:
	-mkdir -p ~/.bak/dotfiles

vim: bak-dotfiles-dir
	-mv ~/.vim ~/.bak/dotfiles/$(NOW).vim.bak
	-cp -rf dot/.vim ~
	-mv ~/.vimrc ~/.bak/dotfiles/$(NOW).vimrc.bak
	-cp -rf dot/.vimrc ~
	-mv ~/.gvimrc ~/.bak/dotfiles/$(NOW).gvimrc.bak
	-cp -rf dot/.gvimrc ~

zsh: bak-dotfiles-dir
	-cp -rf ~/.zshrc ~/.bak/dotfiles/$(NOW).zshrc.bak
	-cp -rf dot/.zshrc ~
	-cp -rf ~/.oh-my-zsh ~/.bak/dotfiles/$(NOW).oh-my-zsh.bak
	-cp -rf dot/.oh-my-zsh ~

oh-my-zsh:
	#

powerline: oh-my-zsh
	-mkdir -p /root/.oh-my-zsh/custom/themes
	-$(shell git clone https://github.com/bhilburn/powerlevel9k.git /root/.oh-my-zsh/custom/themes/powerlevel9k)

plan:
	-cp -r dot/.plan ~

gitconfig:
	-cp -r dot/.gitconfig ~

####################
## install-server ##
####################

fonts:
	./fonts/powerline/install.sh

curl:
	sudo apt-get install curl

sci-serv-base: curl
	sudo apt-get update
	sudo apt-get install nginx
	sudo ufw app list
	sudo ufw allow 'Nginx HTTP'
	sudo ufw status
	systemctl status nginx
	ip addr show eth0 | grep inet | awk '{ print $2; }' | sed 's/\/.*$//'
