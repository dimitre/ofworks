#!/bin/bash
cd "$(dirname "$0")"
set -e

if [[ "$(uname -s)" == "Darwin" ]]; then
    if ! command -v brew 2>&1 >/dev/null
    then
        echo "Brew not installed, install via instructions in the browser and then run the script again"
        open https://brew.sh
        exit
    fi
fi
COLOR='\033[0;32m'
COLOR2='\033[0;34m'
NC='\033[0m' # No Color

section() {
    printf "💻 ${COLOR}${@}${NC}\n\r"
}

# echo "parameter"
section "OFWorks (OpenFrameworks Fork)"
echo $@

if [ -d "ofworks" ]; then
    echo "Folder ${PWD}/ofworks exists, exiting"
    exit
fi

echo "Installing to ${PWD}/ofworks"
read -p "Proceed? (y/n) " -n 1 -r


echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
	echo "YES"
	time git clone --branch ofworks https://github.com/dimitre/openframeworks --depth 1 ofworks
	cd ofworks
	time ./libs/libs.sh
	cd ofGen
	./compile.sh
	# ./install.sh
	cd ..
else
	echo "ok, exit without installing."
    # do dangerous stuff
fi


## BREW ALIKE
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/dimitre/openFrameworks/refs/heads/tuningfork/install_of.sh)" pwd
