# ------------------------------------------------
#!/bin/bash
# This script will map a desired network drive to your Linux machine.
# ------------------------------------------------

echo "Script starting..."
echo "What is the network drive you would like to map?"
read networkDrive
echo "What is the username you would like to use?"
read username
echo "What is the password you would like to use?"
read password
echo "What is the mount point you would like to use?"
read mountPoint
echo "What is the domain you would like to use?"
read domain
sudo mkdir $mountPoint
sudo mount -t cifs $networkDrive $mountPoint -o user=$username,password=$password,vers=3.0
echo "Script complete!"