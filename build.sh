#!/bin/bash

build_dir="build"
bin_dir="bin"

function vmkdir()
{
    for idir in $@
    do
    if [ ! -d "$idir" ];then
        echo -e "mkdir $idir"
        mkdir $idir
    else
        echo -e "$idir exist!"
        rm -rf $idir/*
    fi
    done
}

function build()
{
    vmkdir $build_dir $bin_dir

    cd $build_dir
    cmake -DCMAKE_BUILD_TYPE=debug -DCMAKE_INSTALL_PREFIX=/usr/mine ../src/ 
    make
    cd -
}

function main()
{
    date_bgn=$(date +"%s")
    build
    date_end=$(date +"%s")
    date_str=$(date +"%Y-%m-%d %H:%M:%S") 
    echo -e "=============end: $date_str, cost: $[$date_end-$date_bgn]"
}

main

