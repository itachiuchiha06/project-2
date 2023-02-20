#!/bin/bash
sudo apt update
sudo apt-get full-upgrade -y
sudo apt-get install python3-pip
sudo apt-get git
sudo git clone https://github.com/itachiuchiha06/car-prediction.git
cd car-prediction
pip install -r requirements.txt
screen -m -d python3 app.py
