#!/bin/bash
echo "Installing dependencies"
sudo apt install git ffmpeg libmariadb3 libpq5 libmicrohttpd12 motion python-pip python-dev libssl-dev libcurl4-openssl-dev libjpeg-dev libz-dev python-pil -y

echo "Installing Motioneye"
sudo pip install motioneye

echo "Configuring Motioneye"
sudo mkdir -p /etc/motioneye
sudo mkdir -p /var/lib/motioneye
sudo cp /home/pi/babycam/motioneye-files/motioneye.conf /etc/motioneye/motioneye.conf
sudo cp /home/pi/babycam/motioneye-files/motion.conf /etc/motioneye/motion.conf
sudo cp /home/pi/babycam/motioneye-files/camera-1.conf /etc/motioneye/camera-1.conf
sudo cp /usr/local/share/motioneye/extra/motioneye.systemd-unit-local /etc/systemd/system/motioneye.service

echo "Configuring systemd daemons"
sudo cp /home/pi/babycam/systemd-files/babycam* /lib/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable babycam-add-text-overlay.service
# sudo systemctl enable babycam-infrared-cleanup.service
sudo systemctl enable babycam-led-disable.service
sudo systemctl enable motioneye
