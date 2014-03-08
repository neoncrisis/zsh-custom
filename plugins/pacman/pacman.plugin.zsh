# Default to using yaourt if it is installed
if $(which yaourt &> /dev/null); then
	export pacman_program=$(which yaourt)
fi

# Alias all pacman calls to pacmatic
alias pacman='pacmatic'


# Disable `make install` at the user level
make() {
	if [[ "$1" == 'install' ]]; then
		echo -e "WARNING:\nDON'T INSTALL SOFTWARE MANUALLY\nDON'T USE unset make TO OVERRIDE"
		echo "Tip: It's easy to make own custom package see: man PKGBUILD makepkg"
		return 1
	fi
	/usr/bin/make $@;
 }