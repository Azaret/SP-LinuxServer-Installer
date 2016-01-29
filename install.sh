#!/bin/bash
# @author : Purexo
# https://github.com/purexo/SP-LinuxServer-Installer

function npm_update {
  npm install
  npm run build
}

function prerequisitory_warning {
  echo "You'll need NodeJS 4.x callable with node keyword, press ctrl-c if you don't have it"
  echo "Or press enter to continue"
  read
}

function run_instructions {
  echo 'Superpowers is ready and installed with supGame, supWeb, and supLove systems'
  echo 'run "node server start" and access it with "http://localhost:4237/" address'
  echo 'press ctrl-c to cancel it'
}

prerequisitory_warning

git clone https://github.com/superpowers/superpowers --recursive
cd superpowers

mkdir systems

git clone 'https://github.com/superpowers/superpowers-game' systems/supGame --recursive
git clone 'https://github.com/superpowers/superpowers-web' systems/supWeb --recursive
git clone 'https://github.com/superpowers/superpowers-love2d' systems/supLove --recursive

npm_update

run_instructions
