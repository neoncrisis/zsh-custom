## Safe command line utilities
alias mkdir='mkdir -p'
alias rm='rm -v'
alias mv='mv -i'
alias cp='cp -iv'
alias mv='mv -iv'
alias ping='ping -c 4'
alias chown='chown'
alias chmod='chmod'
alias chgrp='chgrp'
alias nano='nano -wm'
alias ln='ln -i'

find () {
	command find $@ ! -path "/.snapshots/*"
}

#alias tail='grc tail'
#alias sudo='sudo '  # Allow aliases using sudo
