#!/bin/bash

readonly title=keyboard-row
readonly pre_dir="leetcode/document/"

#logs
echo -e "$(date)\ntitle:$title" >>leetcode/logs/create-logs.txt
#markdown
python leetcode/creat-leetcode-md.py $title $pre_dir

# if [ $# != 1 ]; then
#     echo "please enter parameters"
#     exit
# fi

# #获取难度
# difficulties=("" Simple Medium Difficult)
# echo -e "难度"
# echo -e "1...Simple"
# echo -e "2...Medium"
# echo -e "3...Difficult"
# echo -e "---------------"
# read difficulty
# if [[ $difficulty == 0 ]] || [[ $difficulty -gt ${#difficulties[@]}-1 ]]; then
#     echo "exit"
#     exit
# fi
# difficulty=${difficulties[$difficulty]}

# readonly PRE_DIR=`dirname $0`/leet-test
# readonly TAR_DIR=/leetcode
# readonly FILENAME=/[$difficulty]-$1

# ##写入题目信息
# DIF=difficulty:$difficulty
# URL=https://leetcode-cn.com/problems/
# TIP="creat time:$(date "+%Y-%m-%d")"
# echo -e "${DIF}  \n${TIP}  \n${URL}  \n">${PRE_DIR}/${TAR_DIR}/${FILENAME}.md

# #logs
# echo -e "parameters:$1\ndifficulty:$difficulty\ncreate=> ${TIP}" >>`dirname $0`/leet-test/logs/create-logs.txt
