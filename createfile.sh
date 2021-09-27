#!/bin/bash

if [ $# != 1 ]; then
    echo "please enter parameters"
    exit
fi

PRE_DIR=$(pwd)/leet-test
TAR_DIR=/starting/leet_$1_$(date "+%Y-%m-%d")

#创建目标文件
if [ -d "${PRE_DIR}/starting/leet_$1_$(date "+%Y-%m-%d")" ]; then
    rm -r ${PRE_DIR}/${TAR_DIR}
fi
mkdir ${PRE_DIR}/${TAR_DIR}
scrot -s ${PRE_DIR}/${TAR_DIR}/leet_$1.png

#备份前一次代码
if [ -f "./main.old.cpp" ]; then
    rm main.old.cpp
fi
mv $(pwd)/main.cpp $(pwd)/main.old.cpp

#写入标志信息
URL=//...https://leetcode-cn.com/problems/
TIP=//...leetcode_$1_$(date "+%Y-%m-%d")
cp ${PRE_DIR}/examples/main-example.cpp $(pwd)/main.cpp
sed -i "1i\
    $TIP\
    \n$URL" $(pwd)/main.cpp
cp $(pwd)/main.cpp ${PRE_DIR}/${TAR_DIR}/main.cpp