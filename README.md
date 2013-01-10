README
===

Just dem dotfiles.

To sync on new machine:

    cd ~
    git clone https://github.com/kzhu91/dotfiles.git ~/.dotfiles

Then symlink files appropriately.

    ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
    ln -s ~/.dotfiles/vim/ ~/.vim
    ln -s ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf
    ln -s ~/.dotfiles/bashrc ~/.bashrc
    ln -s ~/.dotfiles/bash_profile ~/.bash_profile
    ...

I'll write a script to automate this some day.

Dealing with submodules:

  When you initially git clone, all the submodule dirs (in vim/bundle) will exist, but be empty.
  From the top-level of the repo, run:

    git submodule init
    git submodule update

tmux
---

* *tmux.conf*: config file for tmux

seshes
---

Contains scripts to automate setting up my tmux envs

vim
---

* *vimrc*: config file for vim
* bundle/ — submodules for vim plugins

To add new plugin (requires Pathogen):

    git submodule add <PLUGIN> vim/bundle/<PLUGIN>

Updating all bundled plugins:

    git submodule foreach git pull origin master

Removing a plugin (i.e. a git submodule):

    Delete appropriate section from .gitmodules file.
    Delete appropiate section in .git/config.
    git rm --cached path/to/submodule (NOTE: NO TRAILING SLASH!)
    Commit and delete untracked submodule files.

The following bit is outdated since I switched to ctrl-p. But leaving this here for notes.

***NOTE REGARDING COMMAND-T***:

On my machine, I built Vim with my system ruby, so be sure I'm using this before making Command-T.

    rvm use system

After updating Command-T, you have to manually build the C extension:

    cd ~/.dotfiles/vim/bundle/command-t/ruby/command-t
    ruby extconf.rb
    make

This shouldn't give you any errors if you're doing it right.

bash
---

* *bashrc*: customize prompt
* *editrc* and *inputrc*: set vi mode for shell, irb, mysql

git
---

* *git-completion.bash*: tab complete for git

zsh
---

* oh-my-zsh that bidness
