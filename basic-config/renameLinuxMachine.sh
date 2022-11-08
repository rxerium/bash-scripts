#!/bin/bash
echo "What would you like to rename the server to?"
read servername
echo "$servername" >> /etc/hostname
source /etc/hostname
echo "Server name updated"