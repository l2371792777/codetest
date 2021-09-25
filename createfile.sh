#!/bin/bash

if [ $# != 1 ]; then
    echo "please enter parameters"
    exit
fi

PRE_DIR=$(pwd)/leet-test/starting
TAR_DIR=leet_$1_$(date "+%Y-%m-%d")

#创建目标文件
if [ -d "${PRE_DIR}/starting/leet_$1_$(date "+%Y-%m-%d")" ]; then
    rm -r ${PRE_DIR}/${TAR_DIR}
fi
mkdir ${PRE_DIR}/starting/${TAR_DIR}
cp ${PRE_DIR}/examples/main-example.cpp ${PRE_DIR}/${TAR_DIR}/main.cpp
scrot -s ${PRE_DIR}/${TAR_DIR}/leet_$1.png

if [ -f "./main.old.cpp" ]; then
    rm main.old.cpp
fi
mv $(pwd)/main.cpp $(pwd)/main.old.cpp
echo //...leetcode_$1_$(date "+%Y-%m-%d") >$(pwd)/main.cpp

