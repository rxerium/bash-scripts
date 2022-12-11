# 1. Creates SSH key / folders for the system
# 2. Allows you to input your SSH keys
# 3. Disables password authentication

#!/bin/bash
echo "SSH Script Running..."
sleep 2
echo | ssh-keygen -P ''
echo "Please enter your SSH Key:"
read sshvar
echo "$sshvar" >> ~/.ssh/authorized_keys
echo "SSH Key updated"
sleep 1
echo "Turning Off Password Authentication..."
cd /etc/ssh
sed -i 's/#   PasswordAuthentication yes/    PasswordAuthentication no/g' ssh_config
sed -i 's#Include /etc/ssh/ssh_config\.d/\*\.conf##g' ssh_config && sed -i 's#Include /etc/ssh/sshd_config\.d/\*\.conf##g' sshd_config
sleep 2
echo "Password Authentication Disabled"
sudo systemctl restart ssh
sleep 1
echo "Script complete!"