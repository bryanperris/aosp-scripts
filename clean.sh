#!/bin/bash
cd android

# Put repo script in path
export PATH=$PATH:~/bin

# Setup AOSP Environment
source build/envsetup.sh

# Clean
make clobber
rm -rf ccache