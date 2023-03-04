# Updates and upgrades the packages on the Linux machine
# Checks if there is a distribution update too

#!/bin/bash
echo "Script starting..."

# update the package list
sudo apt-get update

# upgrade all installed packages to the latest version
sudo apt-get upgrade -y

# install any available security updates
sudo apt-get dist-upgrade -y

# remove any unused packages
sudo apt-get autoremove -y

sudo reboot

echo "Script complete!"
