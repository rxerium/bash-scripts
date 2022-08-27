# Installs and configures the tzdata package
# OpenVPN install
# Stores the password in plain text in the vpn_password.txt file under the root account

#!/bin/bash
echo "In a moment you will be asked to selcect your timezone..."
sleep 3
sudo apt install tzdata
dpkg-reconfigure tzdata
sleep 3

echo "Installing and setting up OpenVPN..."
sleep 2
apt update && apt -y install ca-certificates wget net-tools gnupg
sleep .5
wget -qO - https://as-repository.openvpn.net/as-repo-public.gpg | apt-key add -
sleep .5
echo "deb http://as-repository.openvpn.net/as/debian focal main">/etc/apt/sources.list.d/openvpn-as-repo.list
sleep .5 
sudo apt update && apt -y install openvpn-as >> /root/vpn_password.txt
sleep .5 
echo "OpenVPN successfully installed, you can find the password in the /root/vpn_password.txt file" 