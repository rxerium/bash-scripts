# Updates and upgrades the packages on the Linux machine

#!/bin/bash
echo "Script starting..."
sleep 1
echo "Updating the system..."
sudo apt-get update
sleep 2
echo "Upgrading the system..."
sudo apt-get upgrade -y
echo "Upgrade complete, rebooting in 10 seconds..."
sleep 10 
sudo reboot