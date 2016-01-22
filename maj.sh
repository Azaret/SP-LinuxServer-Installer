function git_update {
  git pull --recurse-submodules
  git submodule update --recursive
}

function npm_update {
  npm install
  npm run build
}

function run_instructions {
  echo 'Superpowers is ready and update (with your already installed systems)
  echo 'run "node server start" and access it with "http://localhost:4237/" adress'
  echo 'press ctrl-c to cancel it'
}

git_update

cd systems

for folder in $(find . -mindepth 1 -maxdepth 1 -type d)
do
        cd $folder
        git_update
        cd ../
done

cd ../

npm_update

run_instructions
