# investigate
https://github.com/zsh-users/zsh-autosuggestions#oh-my-zsh
https://www.iterm2.com/documentation-shell-integration.html
git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes
https://github.com/agnoster/agnoster-zsh-theme.git
https://github.com/bhilburn/powerlevel9k#installation
stylizing your prompt https://github.com/bhilburn/powerlevel9k/wiki/Stylizing-Your-Prompt
http://todotxt.com
https://github.com/ginatrapani/todo.txt-cli/releases
show off your config: https://github.com/bhilburn/powerlevel9k/wiki/Show-Off-Your-Config
https://github.com/dritter/agnoster-like-themes
powerline prompt for your shell https://github.com/banga/powerline-shell
install powerline on mac https://gist.github.com/wm/4750511
learn zsh autocorrections: https://github.com/zsh-users/zsh-autosuggestions#oh-my-zsh
solarized-powerline install instructions: https://github.com/KuoE0/oh-my-zsh-solarized-powerline-theme
https://devhub.io/repos/jlom-terminal-setup
zsh via antigen http://tarubaru.ru/watch/TIkJ5fDz2-g
ohmyzh antigen https://wn.com/zsh_shell_with_antigen_oh_my_zsh_power_level_9k_theme
https://www.youtube.com/watch?v=TIkJ5fDz2-g

# automate iterm2 configuration
- oh-my-zsh
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
echo "ZSH_THEME=\"powerlevel9k/powerlevel9k\"" >> $ZSHRC
brew install zsh-syntax-highlighting
echo "source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> $ZSHRC

By default, word jumps (option + → or ←) do not work. To enable these, go to "iTerm -> Preferences -> Profiles -> Keys". Press the + sign under the list of key mappings and add the following sequences:

Option + right

⌥→
Send Escape Sequence
f
Option + left

⌥←
Send Escape Sequence
b


Just follow these steps: https://github.com/tarruda/zsh-autosuggestions#oh-my-zsh

If the auto suggestions do not appear to show, it could be a problem with your color scheme. Under "iTerm -> Preferences -> Colors tab", check the value of Black Bright, that is the color your auto suggestions will have. It will be displayed on top of the Background color. If there is not enough contrast between the two, you won't see the suggestions even if they're actually there..
