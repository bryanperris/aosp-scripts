#!/bin/bash
cd android

# Put repo script in path
export PATH=$PATH:~/bin

# Setup AOSP Environment
export LC_ALL=C
export USE_CCACHE=1 
export CCACHE_DIR=ccache
source build/envsetup.sh
lunch aosp_arm64-eng

# Start the build
make -j8
