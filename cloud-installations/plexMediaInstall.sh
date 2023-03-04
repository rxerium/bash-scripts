# Description:
# Plex is an American streaming media service and a client–server media player platform, made by Plex, Inc. The Plex Media Server organizes video, audio, and photos from a user's collections and from online services, and streams it to the players. (Description from WIkipedia)

# Website for reference: 
# https://www.plex.tv

#!/bin/bash
# Imports the Plex repository and the repository’s GPG key:
curl https://downloads.plex.tv/plex-keys/PlexSign.key | sudo apt-key add -
echo deb https://downloads.plex.tv/repo/deb public main | sudo tee /etc/apt/sources.list.d/plexmediaserver.list
sleep 2
# Installs Plex
sudo apt update
sudo apt install plexmediaserver
echo "Plex Installed"
sleep 2
# Creates the Media folder for your films / TV shows / Music / Photos
echo "Creating Media Folder..."
mkdir /media/Plex
echo "Media folder created under /Media/Plex"
sleep 1
echo "Script complete"