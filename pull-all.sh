#!/bin/bash

pull_code() {
  if [[ -n $(git status -s) ]]; then
    git stash -u --quiet
    git pull --rebase --quiet
    git stash pop --quiet
  else
    git pull --rebase --quiet
  fi
}

# Update myself
echo "==== 🇷🇺  Update Compose Repo ===="
pull_code &

# Chatbot UI
echo "==== 🇺🇦  Update Chatbot UI Ukraine ===="
cd ../aj-ui
pull_code &

# Rasa
echo "==== 🇪🇪  Update Rasa Estonia ===="
cd ../aj-rasa
pull_code &

# Rasa action
echo "==== 🇱🇹  Update Rasa action Lithuania ===="
cd ../aj-rasa-actions
pull_code &

# Custom action (Java)
echo "==== 🇱🇻  Update Backend Latvia ===="
cd ../aj-backend
pull_code &

# BFF
echo "==== 🇬🇪  Update BFF Georgia ===="
cd ../aj-bff
pull_code &

# back to here
cd ../aj-compose

wait

echo "==== 🎉 All repo updated ===="
