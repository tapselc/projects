#!/bin/sh
#git config --global user.email "chris_tapsell@ntlworld.com"
#git config --global user.name "tapselc"
#ssh-keygen -t rsa -C "chris_tapsell@ntlworld.com"
#exec ssh-agent bash
ssh-add ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub
read -p "Copy to GitHub"

cd ~/projects
git init
curl -u 'tapselc' https://api.github.com/user/repos -d '{"name":"projects"}'
git remote add origin git@github.com:tapselc/projects.git
read -p "Check GitHub"
git add *
git commit -m "First Commit"
git push -u origin master

