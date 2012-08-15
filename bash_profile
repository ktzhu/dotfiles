# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

source ~/.git-completion.bash

# Current Projects
alias foggy='cd ~/Dev/GOOD/foghorn/'
alias goodlyfe='cd ~/Dev/GOOD/'
alias goodrb='cd ~/Dev/GOOD/good.rb/'
alias goodis='cd ~/Dev/GOOD/good.is/'
alias drivethru='cd ~/Documents/Classes/EECS\ 338\ \|\ Infosys/drivethrurb/'

alias madhatter='ssh kaz600@madhatter.eecs.northwestern.edu'

PATH=/usr/local/bin:$PATH:$HOME/bin:/usr/local/sbin
export PATH
# alias mysqlstart='/usr/local/Cellar/mysql/5.5.14/bin/mysqld_safe &'
alias mysqlstart='/usr/local/Cellar/mysql/5.5.14/bin/mysql.server start'
alias mysqlstop='/usr/local/Cellar/mysql/5.5.14/bin/mysqladmin -u root -p shutdown'
alias reload='source ~/.bash_profile'

# Load RVM function
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# startup virtualenv-burrito
if [ -f $HOME/.venvburrito/startup.sh ]; then
    . $HOME/.venvburrito/startup.sh
fi
