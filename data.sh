#!/bin/bash
sudo apt update
sudo apt-get full-upgrade -y
sudo apt-get install python3-pip -y
sudo apt-get git -y
sudo git clone https://github.com/itachiuchiha06/car-prediction.git
cd car-prediction
pip3 install -r requirements.txt
screen -m -d python3 app.py
