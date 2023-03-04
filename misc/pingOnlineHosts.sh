# ----------
#!/bin/bash
# Pings all devices on the .30 ranges and outputs all active hosts to the online_hosts.txt file
# Useful when creating hosts files with Ansible playbooks
# ----------

for i in {1..254}
do
  ping -c 1 10.0.30.$i > /dev/null 2>&1
  if [ $? -eq 0 ]; then
    hostname=$(nslookup 10.0.30.$i | grep "name =" | awk '{print $4}')
    echo "10.0.30.$i $hostname" >> online_hosts.txt
  fi
done