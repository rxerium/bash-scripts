# Updates and upgrades the packages on the Linux machine
# Checks if there is a distribution update too

#!/bin/bash
echo "Script starting..."
sleep 1
echo "Updating the system..."
sudo apt-get update
sleep 2
echo "Upgrading the system..."
sudo apt-get upgrade -y
sleep 2
"Attempting to update your Linux distro, if possible"
sudo apt-get dist-upgrade
sleep 2
echo "Upgrade complete, rebooting in 10 seconds..."
sleep 10 
sudo reboot