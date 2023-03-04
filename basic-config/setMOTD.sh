# ------------------------------------------------
#!/bin/bash
# This script will allow  you to set a custom MOTD for your Linux machine.
# ------------------------------------------------

echo "What would you like to set the MOTD to?"
read motd
echo "$motd" >> /etc/motd
echo "MOTD updated"