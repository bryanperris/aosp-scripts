#!/bin/bash
rm -rvf android
mkdir android
cd android

# Put repo script in path
export PATH=$PATH:~/bin

# Init the AOSP Repository
repo init -u https://android.googlesource.com/platform/manifest -b android-8.1.0_r69
cp .repo/repo/repo ~/bin/repo

# Download the source tree to local filesystem
repo sync -c -j 8 --no-tags --no-clone-bundle --optimized-fetch