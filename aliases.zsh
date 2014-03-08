## Safe command line utilities
alias mkdir='mkdir -p'
alias rm='rm --one-file-system -Iv'
alias mv='mv -i'
alias cp='cp -iv --reflink'
alias mv='mv -iv'
alias ping='ping -c 4'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
alias nano='nano -wm'
alias ln='ln -i'

find () {
	command find $@ ! -path "/.snapshots/*"
}

#alias tail='grc tail'
#alias sudo='sudo '  # Allow aliases using sudo