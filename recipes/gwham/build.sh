#!/bin/bash
mkdir -p $PREFIX/bin
cd "wham_${PKG_VERSION}"
cd wham
# Use the given $(CC)
sed -i -e 's/CC=gcc//g' Makefile
make clean
make
mv wham $PREFIX/bin
cd ../wham-2d
# Use the given $(CC)
sed -i -e 's/CC=gcc//g' Makefile
make clean
make
mv wham-2d $PREFIX/bin
