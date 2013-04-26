#!/bin/sh

IKVM_HOME=$HOME/projects/ikvm-monotouch
MT_HOME=/Developer/MonoTouch/usr/lib/mono/2.1

if [ -z "$1" ]; then
    echo "Usage: $0 somedll.dll"
    exit 255
fi

SRC_DLL=$MT_HOME/$1
if [ ! -f $SRC_DLL ]; then
    echo "No such DLL: $SRC_DLL"
    echo "Valid DLLs:"
    ls $MT_HOME/*.dll | sed "s:$MT_HOME/::g"
    exit 255
fi

mono $IKVM_HOME/bin/ikvmstub.exe -nostdlib -lib:$MT_HOME $MT_HOME/$1
