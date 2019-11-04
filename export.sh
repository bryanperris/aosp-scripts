#!/bin/bash
rm android.tar.xz
tar -cvf - android/ | xz -T8 -9e -c - > android.tar.xz 
