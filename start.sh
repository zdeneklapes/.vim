#!/bin/bash

complete -c timedatectl -s h -l help -d 'Print a short help text and exit'

##### COLORS
RM="rm -rfd"
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'

##### FUNCTIONS
function usage() {
    echo "USAGE:"
	echo "	--create_symlink"
	echo "  --pull"
	echo "  --zip"
	exit 0
}

function error_exit() {
    printf "${RED}ERROR: $1${NC}\n"
    usage
    exit 1
}

##### PROCESS COMMAND
function create_symlink() {
	cd .. | error_exit "cd command"
	ln -s ${HOME}/.vim/.vimrc .vimrc
	cd - | error_exit "cd command"
}

function pull() {
	git pull
}

function zip() {
	zip -r vim.zip .vimrc start.sh spell autoload include 	
}

function clean() {
	rm .netrwhist

}

##### PARSE CLI-ARGS
[[ "$#" -eq 0 ]] && usage && exit 0
while [ "$#" -gt 0 ]; do
	case "$1" in
		"--create_symlink") create_symlink ;;
		"--pull") pull ;;
		"--zip") zip ;;
		"--zip") clean ;;
		"-h"|"--help"|*) usage ;;
	esac
	shift
done
