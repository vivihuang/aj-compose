#!/bin/bash

cd ..

# Chatbot UI
echo "==== 🇺🇦  Clone Chatbot UI ===="
git clone git@github.com:vivihuang/aj-ui.git

# Rasa
echo "==== 🇪🇪  Clone Rasa Estonia ===="
git clone git@github.com:vivihuang/aj-rasa.git

# Rasa action
echo "==== 🇱🇹  Clone Rasa action Lithuania ===="
git clone git@github.com:vivihuang/aj-rasa-actions.git

# Custom action (Java)
echo "==== 🇱🇻  Clone Backend Latvia ===="
git clone git@github.com:vivihuang/aj-backend.git

# BFF
echo "==== 🇬🇪  Clone BFF Georgia ===="
git clone git@github.com:vivihuang/aj-bff.git

# back to here
cd aj-compose

wait

echo "==== 🎉 All repo Cloned ===="
