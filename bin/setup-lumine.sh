#!/usr/bin/env bash

# Get the project name from the first command line argument
project_name=$1

echo ""
echo "Creating new Expo app with name '$project_name'..."

npx create-expo-app -t expo-template-blank-typescript $project_name

echo ""
echo "Adding support for React Native Web..."

cd $project_name
npx expo install @expo/webpack-config@^0.17.2

echo ""
echo "Installing lumine-ui dependency..."

npm install lumine-ui

echo ""
echo "Updating App.tsx to use lumine-ui..."

curl https://raw.githubusercontent.com/Lumine-UI/create-lumine-app/main/App.tsx -o App.tsx

echo ""
echo "Done!"

echo ""
echo "To run your app, run the following commands:"

echo ""
echo "cd $project_name"
echo "npm start"

echo ""
echo "Happy coding with Lumine! 🎉"
echo ""

