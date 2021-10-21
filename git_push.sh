#/bin/bash

echo "commit -m:"
read log
git add ./
git commit -m $log-$(date "+%Y-%m-%d-%H")
git push -u origin master