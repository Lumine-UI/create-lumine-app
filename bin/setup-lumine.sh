#!/usr/bin/env bash

# Get the project name from the first command line argument
project_name=$1

echo "Creating new Expo app with name '$project_name'..."

npx create-expo-app -t expo-template-blank-typescript $project_name

echo "Installing lumine-ui dependency..."

cd $project_name
npm install lumine-ui

echo "Updating App.tsx to use lumine-ui..."

cp ../App.tsx .

echo "Done!"
