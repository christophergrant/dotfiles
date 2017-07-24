source /usr/share/defaults/etc/profile

# === aliases ================================================================


#text editors
alias vim=nvim
alias emacs="emacs -nw"
alias vrc="nvim ~/.config/nvim/init.vim"
alias brc="nvim ~/.bashrc"
alias v=nvim

#shell
alias l="ls -l"
alias fuck='sudo $(history -p !!)'
alias plz='sudo $(history -p !!)'

#prog
alias repl="lein repl"

#misc
alias wtr="curl wttr.in/fullerton"
alias pissh="ssh pi@chrisberrypi"
alias home_ssh="ssh c@192.168.1.123"
alias away_ssh="ssh c@172.249.120.182 -p 1993"

#git
alias gpom="git push origin master"


# === end of aliases =========================================================

export PATH=$PATH:~/.local/bin/
export PATH=/home/c/anaconda3/bin:$PATH
export PATH="$HOME/.cargo/bin:$PATH"
