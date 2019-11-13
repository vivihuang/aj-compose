#!/bin/bash

pull_code() {
  if [[ -n $(git status -s) ]]; then
    git stash
    git pull --rebase
    git stash pop
  else
    git pull --rebase
  fi
}

# Update myself
echo "==== Update Command Repo: 🇷🇺  Russia ===="
pull_code

# Chatbot UI
echo "==== Update Chatbot UI: 🇺🇦  Ukraine ===="
cd ../aj-ukraine
pull_code

# Rasa
echo "==== Update Rasa: 🇪🇪  Estonia ===="
cd ../aj-estonia
pull_code

# Rasa action
echo "==== Update Rasa action: 🇱🇹  Lithuania ===="
cd ../aj-lithuania
pull_code

# Custom action (Java)
echo "==== Update Rasa action: 🇱🇻  Latvia ===="
cd ../aj-latvia
pull_code

# BFF
echo "==== Update Rasa action: 🇬🇪  Georgia ===="
cd ../aj-georgia
pull_code

# back to here
echo "==== All repo updated ===="
cd ../aj-russia
