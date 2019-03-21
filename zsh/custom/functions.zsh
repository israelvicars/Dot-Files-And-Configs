clean-eflex () {
  tmux kill-server
  sudo pkill proftpd
}

restart-eflex () {
  clean-eflex
  tmuxinator eflex
}

project-root () {
  while [ ! -e package.json ] && [ $PWD != '/' ]
    do
      cd ..
    done
}

app-root () {
  while [[ ! $PWD == *app ]] && [ $PWD != '/' ]
    do
      cd ..
    done
}

git-reset-everywhere () {
  commit=$1
  branch=$(git symbolic-ref --short HEAD)

  echo 'Local Reset'
  git reset --hard $commit
  echo 'Remote Reset'
  git push -f origin $commit:$branch
}

git-push-new () {
  branch=$(git symbolic-ref --short HEAD)
  git push --set-upstream origin $branch
}

restart-watchman () {
  watchman watch-del ~/eflex/webApp
  PID=$!
  sleep 2
  kill -INT $PID
  watchman shutdown-server
}
