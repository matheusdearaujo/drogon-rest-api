#!/bin/bash

echo "Entering in build folder..."
cd ./build

echo "Compiling test project..."
cmake ..

echo "Compiling project..."
make

echo "Running bin..."
./drogon-rest-api