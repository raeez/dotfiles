NOW='generic'
-include $(PROJ)/mkscripts/timestamp.mk
CP=cp -rf
MV=mv -f

###########
## clean ##
###########

save: save-rc save-gitconfig save-vim save-vimrc save-zshrc save-oh-my-zsh
	-git rm -rf dot/.vim/backup/*
	-rm -rf dot/.vim/backup/*

install: fonts colored-manpages tmux vim zsh plan gitconfig
	echo "done"

#######################
## save local config ##
#######################

save-rc: save-tmux-conf save-vimrc save-gitconfig save-zshrc

save-tmux-conf:
	-$($(CP)) ~/.tmux-conf dot/tmux-conf
	# TODO contemplate switch on OS

save-vim:
	-$(CP) -r ~/.vim dot/
	-$(CP) -r ~/.viminfo dot/
save-vimrc:
	-$(CP) -rf ~/.vimrc dot/
	-$(CP) -rf ~/.gvimrc dot/
save-gitconfig:
	-$(CP) -rf ~/.gitconfig dot/
save-zshrc:
	-$(CP) -rf ~/.zshrc dot/
save-oh-my-zsh:
	-$(CP) -rf ~/.zshrc dot/
save-iterm2:
	-$(CP) -rf ~/.iterm2 dot/

##########################
## install dependencies ##
##########################

colored-manpages:
	-mkdir -p ~/.terminfo # && cd ~/.terminfo
	-$(CP) themes/mostlike.txt ~/.terminfo/
	-tic ~/.terminfo/mostlike.txt
	# add the following to your shell's profile:
	# alias man="TERMINFO=~/.terminfo/ LESS=C TERM=mostlike PAGER=less man"

bak-dotfiles-dir:
	-mkdir -p ~/.bak/dotfiles

tmux:
	-$(CP) -rf dot/.tmux-conf ~

vim: bak-dotfiles-dir
	-mv ~/.vim ~/.bak/dotfiles/$(NOW).vim.bak
	-$(CP) -rf dot/.vim ~
	-mv ~/.vimrc ~/.bak/dotfiles/$(NOW).vimrc.bak
	-$(CP) -rf dot/.vimrc ~
	-mv ~/.gvimrc ~/.bak/dotfiles/$(NOW).gvimrc.bak
	-$(CP) -rf dot/.gvimrc ~
	-mv ~/.viminfo ~/.bak/dotfiles/$(NOW).viminfo.bak
	-$(CP) -rf dot/.viminfo ~

zsh: bak-dotfiles-dir
	-$(CP) -rf ~/.zshrc ~/.bak/dotfiles/$(NOW).zshrc.bak
	-$(CP) -rf dot/.zshrc ~
	-$(CP) -rf ~/.oh-my-zsh ~/.bak/dotfiles/$(NOW).oh-my-zsh.bak
	-$(CP) -rf dot/.oh-my-zsh ~

oh-my-zsh:
	#

powerline: oh-my-zsh
	-mkdir -p /root/.oh-my-zsh/custom/themes
	-$(shell git clone https://github.com/bhilburn/powerlevel9k.git /root/.oh-my-zsh/custom/themes/powerlevel9k)

plan:
	-$(CP) -r dot/.plan ~

gitconfig:
	-$(CP) -r dot/.gitconfig ~

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
