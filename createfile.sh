#!/bin/bash

if [ $# != 1 ]; then
    echo "please enter parameters"
    exit
fi

PRE_DIR=$(pwd)/leet-test
TAR_DIR=/starting/leet_$1_$(date "+%Y-%m-%d")

#创建目标文件
if [ -d "${PRE_DIR}/${TAR_DIR}" ]; then
    rm -r ${PRE_DIR}/${TAR_DIR}
fi
mkdir ${PRE_DIR}/${TAR_DIR}
scrot -s ${PRE_DIR}/${TAR_DIR}/leet_$1.png

#备份前一次代码
if [ -f "./src/main.old.cpp" ]; then
    rm src/main.old.cpp
fi
mv $(pwd)/src/main.cpp $(pwd)/src/main.old.cpp

#写入标志信息
URL=//...https://leetcode-cn.com/problems/
TIP=//...leetcode_$1_$(date "+%Y-%m-%d")
cp ${PRE_DIR}/examples/main-example.cpp $(pwd)/src/main.cpp
sed -i "1i\
    $TIP\
    \n$URL" $(pwd)/src/main.cpp
cp $(pwd)/src/main.cpp ${PRE_DIR}/${TAR_DIR}/main.cpp