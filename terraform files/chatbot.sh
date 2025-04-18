#!/bin/bash
yum update -y
curl -sL https://rpm.nodesource.com/setup_18.x | bash -
yum install -y nodejs git

# Clone the repo
git clone https://github.com/tyleroneil72/chat-bot.git /home/ec2-user/chat-bot
cd /home/ec2-user/chat-bot

# Start backend
cd backend
npm install
npm start &

# Start frontend
cd ../frontend
npm install
npm start &
