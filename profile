source /usr/share/defaults/etc/profile

# === aliases ================================================================


#text editors
alias vim=nvim
alias emacs="emacs -nw"
alias vrc="nvim ~/.config/nvim/init.vim"
alias brc="nvim ~/.bashrc"
alias pissh="ssh pi@chrisberrypi"
alias v=nvim

#shell
alias l="ls -l"
alias fuck='sudo $(history -p !!)'
alias plz='sudo $(history -p !!)'

#prog
alias repl="lein repl"

#misc
alias wtr="curl wttr.in/fullerton"


# === end of aliases =========================================================

export PATH=$PATH:~/.local/bin/

export PATH="$HOME/.cargo/bin:$PATH"
