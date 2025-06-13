#!/bin/bash

# Update system
apt-get update -y
apt-get install -y wget unzip

# Clean up old files
rm -f *.dat *.json *.zip *.service web server

# Download V2Ray
wget -O v2ray.zip https://github.com/v2fly/v2ray-core/releases/latest/download/v2ray-linux-64.zip
unzip -o v2ray.zip
rm v2ray.zip
mv v2ray web

# Download VLESS config
wget -O config.json https://raw.githubusercontent.com/newbieyan13/diploi-vless/main/config.json

# Make executable
chmod +x web

# Start V2Ray
nohup ./web run &>/dev/null &
