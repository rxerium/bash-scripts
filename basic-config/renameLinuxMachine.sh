#!/bin/bash

# This script will rename your Linux machine to a desired name. 

echo "What would you like to rename the server to?"
read servername
echo "$servername" >> /etc/hostname
source /etc/hostname
echo "Server name updated"