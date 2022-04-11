#!/bin/bash

complete -c timedatectl -s h -l help -d 'Print a short help text and exit'

RM="rm -rfd"
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
PROJECT_NAME="icp_prj1-vut-fit"

####################################### USAGE #######################################
# Available command are:
create_symlink=0
pull=0
zip=0
####################################### END USAGE ###################################

##### FUNCTIONS
function usage() {
    echo "USAGE:"
	echo "  TODO"
}
function error_exit() {
    printf "${RED}ERROR: $1${NC}\n"
    usage
    exit 1
}

##### PARSE CLI-ARGS
[[ "$#" -eq 0 ]] && usage && exit 0
while [ "$#" -gt 0 ]; do
	case "$1" in
		"--create_symlink")
			create_symlink=1
			;;
		"--pull")
			pull=1
			;;
		"--zip")
			zip=1
			;;
		"-h"|"--help")
			usage
			;;
	esac
	shift
done

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

if [ "$create_symlink" -eq 1 ]; then create_symlink ; fi;
if [ "$pull"           -eq 1 ]; then pull; fi;
if [ "$zip"            -eq 1 ]; then zip; fi;


