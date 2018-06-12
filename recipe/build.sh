#!/bin/bash
sed -i.bak "/^DEST_HOME/c DEST_HOME=$PREFIX" makefile.common

make 7za
make install
