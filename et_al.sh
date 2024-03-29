#!/bin/sh
sudo apt update
sudo apt upgrade
sudo apt install vim

cd ~
git clone https://github.com/th33xitus/kiauh.git
git clone https://github.com/mainsail-crew/moonraker-timelapse.git

cd some-raspi-scripts/
./arduino.sh

cd ~
./kiauh/kiauh.sh
./moonraker-timelapse/install.sh
