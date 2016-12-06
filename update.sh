#!/bin/bash

if [ -d pack/claytrong/start ]; then
    pushd pack/claytrong/start
    for d in $( ls -d */ ); do
        pushd $d
        git pull
        popd
    done
    popd
fi

