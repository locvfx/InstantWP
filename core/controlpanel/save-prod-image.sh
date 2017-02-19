#!/usr/bin/env bash
# some magic to find out the real location of this script dealing with symlinks
DIR=`readlink "$0"` || DIR="$0";
DIR=`dirname "$DIR"`;
cd "$DIR"
DIR=`pwd`
cd - > /dev/null 
# disable parameter expansion to forward all arguments unprocessed to the VM
set -f
cp ./image/Pharo.clean-image ./image/InstantWP.image
./controlpanel-ui ./image/InstantWP.image st "$DIR"/"./scripts/save.st"

