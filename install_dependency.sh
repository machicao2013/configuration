#!/bin/bash

if [[ "a`whoami`" != "aroot" ]]; then
    echo "You Must Be root"
    exit 1
fi

yum install -y ncurses-devel ruby ruby-devel lua lua-devel luajit luajit-devel ctags mercurial python python-devel python3 \ python3-devel tcl-devel perl perl-devel perl-ExtUtils-ParseXS perl-ExtUtils-XSpp perl-ExtUtils-CBuilder perl-ExtUtils-Embed cmake
