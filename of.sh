#!/bin/bash
cd "$(dirname "$0")"
set -e

COLOR='\033[0;32m'
COLOR2='\033[0;34m'
NC='\033[0m' # No Color

section() {
    printf "💻 ${COLOR}${@}${NC}\n"
}

section "OFWorks (OpenFrameworks Fork)"

if [ -e "ofworks" ]; then
    echo "Folder ./ofworks exists, exiting"
    exit 1
fi

echo "Installing to ./ofworks"
read -p "Proceed? (y/n) " -n 1 -r

echo

if [[ $REPLY =~ ^[Yy]$ ]]
then
    if git clone --branch ofworks https://github.com/dimitre/openframeworks --depth 1 ofworks && cd ofworks && bash ./ofStart.sh; then
        section "Installation completed successfully!"
    else
        echo "Installation failed. Please check the errors above."
        exit 1
    fi
else
	echo "ok, exit without installing."
fi
