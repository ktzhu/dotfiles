# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# source ~/.git-completion.bash


export PATH=/usr/local/share/npm/bin:~/workspace/medium/internal/scripts:/usr/local/bin:$PATH:$HOME

alias tmuxnew="tmux -S /usr/local/var/pairprogramming new"
alias tmuxopen="chmod 777 /usr/local/var/pairprogramming"
alias tmuxat="tmux -S /usr/local/var/pairprogramming at"
alias dev="cd ~/Dev"
alias flushdns="dscacheutil -flushcache"
alias showdeskicons="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
alias hidedeskicons="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdotfiles="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hidedotfiles="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Reset previous commit but keep all changes
alias goddammit="git reset --soft HEAD^"
# fuck it all
alias fuckit="git reset --hard HEAD"

# empty trash and delete Apple's syslogs
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"
# export JAVA_HOME="$(/usr/libexec/java_home)"
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home
export EDITOR=vi
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
