#SUDO
function add_sudo() {
        BUFFER="sudo "$BUFFER
        zle end-of-line
}

 zle -N add_sudo
 bindkey "^k" add_sudo
