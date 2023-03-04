# ------------------------------------------------
#!/bin/bash
# This script will apply a permanent fix for the hostname of your Linux machine.
# The error occurs when pinging google.com, and can't resolve DNS.
# ------------------------------------------------

echo "Script starting..."
sudo apt install resolvconf -y
sudo echo "domain kifarunix.com 
nameserver 8.8.8.8 
nameserver 8.8.4.4" >> /etc/resolv.conf
sudo resolvconf -u
sudo echo "**supersede domain-name-servers 8.8.8.8, 8.8.4.4;**" >> /etc/dhcp/dhclient.conf
echo "Script complete!"