README
===

Just dem dotfiles.

To sync on new machine:

    cd ~
    git clone https://github.com/kzhu91/dotfiles.git ~/.dotfiles
    ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
    ln -s ~/.dotfiles/vim/ ~/.vim
    ln -s ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf

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

bash
---

* *bashrc*: customize prompt
* *editrc* and *inputrc*: set vi mode for shell, irb, mysql

git
---

* *git-completion.bash*: tab complete for git
