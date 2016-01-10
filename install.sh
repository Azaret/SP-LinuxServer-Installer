#!/bin/bash
# @author : Purexo
echo "You'll need NodeJS 4.x callable by node keyword, press ctrl-c if you don't have it"
echo "Or press enter to continue"
read

echo 'Where do you want install superpowers ? (default ./superpowers)'
read SP_PATH
git clone https://github.com/superpowers/superpowers $SP_PATH

if [ $SP_PATH = "" ]; then
    cd superpowers
else
    cd $SP_PATH
fi

mkdir systems

git clone 'https://github.com/superpowers/superpowers-game' systems/supGame --recursive
git clone 'https://github.com/superpowers/superpowers-web' systems/supWeb --recursive
git clone 'https://github.com/superpowers/superpowers-love2d' systems/supLove --recursive

npm run build

echo 'Superpowers is ready and install with supGame, supWeb, and supLove systems'
echo 'run "node server" and access it with "http://localhost:4237/" adress'
echo 'press ctrl-c to cancel it'