#!/bin/bash
if [ "$(uname)" == "Darwin" ]; then
    sed -i.bak "s|DEST_HOME=.*|DEST_HOME=$PREFIX|" makefile.common;
else
    sed -i.bak "/^DEST_HOME/c DEST_HOME=$PREFIX" makefile.common;
fi

make 7z
make install
