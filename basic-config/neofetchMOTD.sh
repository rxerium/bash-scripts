# ------------------------------------------------
#!/bin/bash
# This script will set a nice looking MOTD for your server, using neofetch
# Neofetch: https://github.com/dylanaraps/neofetch 
# ------------------------------------------------

#!/bin/bash
sudo apt install neofetch -y
neofetch
sudo echo "neofetch;
echo "\n";" > /etc/profile.d/motd.sh
echo "MOTD Set, feel free to make changes to the .config/neofetch/config.conf file"