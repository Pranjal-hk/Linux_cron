#!/bin/bash

# Change directory to the repo
cd /home/ec2-user/training-biz-pranjal

# Capture the history
cat  ~/.bash_history > /home/ec2-user/training-biz-pranjal/history.txt

# Sync to ensure all writes are flushed to disk
sync

# Add changes to git
git add .

# Commit with the current time as the message
git commit -m "$(date '+%Y-%m-%d %H:%M:%S')"

# Push to GitHub
git push origin main
