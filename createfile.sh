#!/bin/bash

if [ $# != 1 ]; then
    echo "please enter parameters"
    exit
fi

readonly PRE_DIR=$(pwd)/leet-test
readonly TAR_DIR=/starting/leet_$1_$(date "+%Y-%m-%d")

#创建目标文件
if [ -d "${PRE_DIR}/${TAR_DIR}" ]; then
    rm -r ${PRE_DIR}/${TAR_DIR}
fi
mkdir ${PRE_DIR}/${TAR_DIR}
scrot -s ${PRE_DIR}/${TAR_DIR}/leet_$1.png

#写入标志信息
URL=//...https://leetcode-cn.com/problems/
TIP=//...leetcode_$1_$(date "+%Y-%m-%d")
cp ${PRE_DIR}/examples/main-example.cpp ${PRE_DIR}/${TAR_DIR}/main.cpp
sed -i "1i\
    $TIP\
    \n$URL" ${PRE_DIR}/${TAR_DIR}/main.cpp
cp ${PRE_DIR}/${TAR_DIR}/main.cpp ./main.cpp

#logs
echo -e "\nparameters:$1\ncreate-> ${TIP}" >> $(pwd)/leet-test/logs/create-logs.txt