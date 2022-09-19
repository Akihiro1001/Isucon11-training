#!/bin/bash

# Git PULL
cd /home/isucon/webapp
git checkout main
git pull origin main

# npmビルド
cd /home/isucon/webapp/nodejs
npm install
npm run build

# サービス再起動
sudo systemctl restart nginx
sudo systemctl restart mysqld
sudo systemctl restart isucondition.nodejs

# ログクリア
sudo truncate /var/log/mysql/mysql-slow.log --size 0
sudo truncate /var/log/nginx/access.log --size 0
