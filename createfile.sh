#!/bin/bash

if [ $# != 1 ]; then
    echo "please enter parameters"
    exit
fi

#获取难度
difficulties=("" Simple Medium Difficult)
echo -e "难度"
echo -e "1...Simple"
echo -e "2...Medium"
echo -e "3...Difficult"
echo -e "---------------"
read difficulty
if [[ $difficulty == 0 ]] || [[ $difficulty -gt ${#difficulties[@]}-1 ]]; then
    echo "exit"
    exit
fi
difficulty=${difficulties[$difficulty]}

readonly PRE_DIR=`dirname $0`/leet-test
readonly TAR_DIR=/starting/[$difficulty]leet_$1_$(date "+%Y-%m-%d")

#创建目标文件
if [ -d "${PRE_DIR}/${TAR_DIR}" ]; then
    rm -r ${PRE_DIR}/${TAR_DIR}
fi
mkdir ${PRE_DIR}/${TAR_DIR}
echo -e "\nscrot >${PRE_DIR}/${TAR_DIR}/leet_$1.png"
scrot -s ${PRE_DIR}/${TAR_DIR}/leet_$1.png
cp ${PRE_DIR}/examples/main-example.cpp ${PRE_DIR}/${TAR_DIR}/main.cpp

##写入题目信息
DIF=//...difficulty:$difficulty
URL=//...https://leetcode-cn.com/problems/
TIP=//...leetcode_$1_$(date "+%Y-%m-%d")
sed -i "1i\
    $DIF    \n$TIP    \n$URL" ${PRE_DIR}/${TAR_DIR}/main.cpp

#logs
echo -e "parameters:$1\ndifficulty:$difficulty\ncreate=> ${TIP}" >>`dirname $0`/leet-test/logs/create-logs.txt
