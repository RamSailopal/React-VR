#!/bin/bash
apt-get update
apt-get install -y curl wget
curl -sL https://deb.nodesource.com/setup_14.x | bash -
apt-get install -y nodejs
cd /home
npm install -g react-vr-cli
react-vr init testview
npm start
cd testview
cp /home/entrypoint/photosphere.jpg static_assets/
sed -i 's/chess-world.jpg/photosphere.jpg/' index.vr.js
sed -i 's/hello//' index.vr.js
npm start
