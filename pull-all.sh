#!/bin/bash

# Update myself
echo "==== Update Command Repo: 🇷🇺  Russia ===="
git stash
git pull --rebase
git stash pop

# Chatbot UI
echo "==== Update Chatbot UI: 🇺🇦  Ukraine ===="
cd ../aj-ukraine
git stash
git pull --rebase
git stash pop

# Rasa
echo "==== Update Rasa: 🇪🇪  Estonia ===="
cd ../aj-estonia
git stash
git pull --rebase
git stash pop

# Rasa action
echo "==== Update Rasa action: 🇱🇹  Lithuania ===="
cd ../aj-lithuania
git stash
git pull --rebase
git stash pop

# Custom action (Java)
echo "==== Update Rasa action: 🇱🇻  Latvia ===="
cd ../aj-latvia
git stash
git pull --rebase
git stash pop

# BFF
echo "==== Update Rasa action: 🇬🇪  Georgia ===="
cd ../aj-georgia
git stash
git pull --rebase
git stash pop

# back to here
echo "==== All repo updated ===="
cd ../aj-russia
