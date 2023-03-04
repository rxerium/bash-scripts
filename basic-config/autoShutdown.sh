# ------------------------------------------------
#!/bin/bash
# This script will allow your system to automaticly shutdown at a desired time.
# ------------------------------------------------

echo "Script starting..."
echo "After how long of inactivity would you like to shutdown the system? (in minutes)"
read inactivity
sudo echo "IdleAction=poweroff
IdleActionSec=$inactivity" >> /etc/systemd/logind.conf
echo "Script complete!"
