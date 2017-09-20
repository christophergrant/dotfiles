#source /usr/share/defaults/etc/profile
source /home/c/.profile


# functions
mkcd () {
  mkdir "$1"
  cd "$1"
}

export WORKON_HOME=$HOME/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

# added by Anaconda3 4.4.0 installer
export PATH="/home/c/anaconda3/bin:$PATH"
