#!/bin/bash

complete -c timedatectl -s h -l help -d 'Print a short help text and exit'

##### COLORS
RM="rm -rfd"
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'

function create_symlink() {
    # Create symlinks for all files in this directory
    ln -s $HOME/.vim/.vimrc $HOME/.vimrc || echo "Symlink already exists"
}

function pull() {
    # Pull latest changes from git
    git pull
}

function zip() {
    # Zip the vimrc
    zip -r vim.zip .vimrc start.sh spell autoload include
}

function clean() {
    # Remove all symlinks
    rm .netrwhist

}

function help() {
    # Print usage on stdout
    echo "Available functions:"
    for file in "make.sh"; do
        function_names=$(cat ${file} | grep -E "(\ *)function\ +.*\(\)\ *\{" | sed -E "s/\ *function\ +//" | sed -E "s/\ *\(\)\ *\{\ *//")
        for func_name in ${function_names[@]}; do
            printf "    $func_name\n"
            awk "/function ${func_name}()/ { flag = 1 }; flag && /^\ +#/ { print \"        \" \$0 }; flag && !/^\ +#/ && !/function ${func_name}()/  { print "\n"; exit }" ${file}
        done
    done
}

function usage() {
    # Print usage on stdout
    help
}

function die() {
    # Print error message on stdout and exit
    printf "${RED}$1${NC}\n"
    help
    exit 1
}

function main() {
    # Main function: Call other functions based on input arguments
    [[ "$#" -eq 0 ]] && die "No arguments provided"
    while [ "$#" -gt 0 ]; do
        retval=$("$1")
        # if is equal to 0 or empty string
        if [[ "$retval" == "0" ]]; then
            die "ERROR: Unknown function: $1()"
        elif [[ ! -z $retval ]]; then
            printf "${RED}ERROR: $retval${NC}\n"
            exit 1
        else
            printf "${GREEN}SUCCESS: $1()${NC}\n"
        fi
        shift
    done
}

main "$@"
