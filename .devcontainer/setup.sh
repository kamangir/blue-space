#!/bin/bash
# Update packages and install dependencies
apt-get update -y
apt-get install -y libgl1-mesa-glx

# Python packages
pip install --upgrade pip
pip install opencv-python-headless
pip install abcli blue-geo blueflow

# aws cli
cd $HOME
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
./aws/install --bin-dir /usr/local/bin --install-dir /usr/local/aws-cli --update
aws --version

# 🪄 abcli -> .bashrc
echo "source $(python3 -m abcli locate)/.abcli/abcli.sh" >>$HOME/.bashrc
