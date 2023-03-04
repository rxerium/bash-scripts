# ------------------------------------------------
#!/bin/bash
# This script will rename your Linux machine to a desired name. 
# This script will update the hostname in the /etc/hosts file.
# This is required for the hostname to be updated in the hosts file.
# The hosts file is used to map IP addresses to hostnames.
# ------------------------------------------------

echo "What would you like to rename the server to?"
read servername
echo "$servername" >> /etc/hostname
source /etc/hostname
echo "Server name updated"


