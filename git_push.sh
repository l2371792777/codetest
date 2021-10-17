#/bin/bash

git add ./
git commit -m $(date "+%Y-%m-%d-%H")
git push -u origin master