#!/bin/bash

curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc \
  | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" \
  | sudo tee /etc/apt/sources.list.d/ngrok.list && sudo apt update && sudo apt install ngrok
ngrok config add-authtoken 2YlSPhnb8jGywRpsvXKQneRKow0_3YNwMsAfmXAMtcpXfECjF
#ngrok tunnel --label edge=edghts_2bypB13WUY8dEK3gnfcEbu4pXFL http://localhost:443 > /dev/null 2>&1
ngrok http 80
mkdir /etc/pterodactyl
cp -r config.yml /etc/pterodactyl
docker-compose up -d --force-recreate
