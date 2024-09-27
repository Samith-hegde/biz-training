#!/bin/bash

export HISTTIMEFORMAT="%F %T "

history -a

#source ~/.bashrc

cd /home/ec2-user/cronjob-assignment/biz-training

cat ~/.bash_history > /home/ec2-user/cronjob-assignment/biz-training/commands_history.txt

/usr/bin/git add .

/usr/bin/git commit -m "$(date '+%Y-%m-%d %H:%M:%S')"

/usr/bin/git push origin main
