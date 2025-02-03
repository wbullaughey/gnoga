#!/bin/zsh
source ~/.zshrc
#alr -v build -- -j10 -s -k -gnatE
export APPLICATION_PATH="/Users/wayne/Project/git/alr/applications"
export GPR_PROJECT_PATH="$APPLICATION_PATH:$APPLICATION_PATH/ada_lib"
make $1
