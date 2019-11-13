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
echo "==== 🇷🇺  Update Command Repo Russia ===="
pull_code &

# Chatbot UI
echo "==== 🇺🇦  Update Chatbot UI Ukraine ===="
cd ../aj-ukraine
pull_code &

# Rasa
echo "==== 🇪🇪  Update Rasa Estonia ===="
cd ../aj-estonia
pull_code &

# Rasa action
echo "==== 🇱🇹  Update Rasa action Lithuania ===="
cd ../aj-lithuania
pull_code &

# Custom action (Java)
echo "==== 🇱🇻  Update Custom action Latvia ===="
cd ../aj-latvia
pull_code &

# BFF
echo "==== 🇬🇪  Update BFF Georgia ===="
cd ../aj-georgia
pull_code &

# back to here
echo "==== 🎉 All repo updated ===="
cd ../aj-russia

wait
