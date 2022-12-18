# <img src="https://raw.githubusercontent.com/Tarikul-Islam-Anik/Animated-Fluent-Emojis/master/Emojis/Objects/Bookmark%20Tabs.png" alt="Bookmark Tabs" width="30" height="30" /> Bash Scripts

A curated list of BASH scripts primarily aimed towards Linux systems, still a work in progress!

## <img src="https://raw.githubusercontent.com/Tarikul-Islam-Anik/Animated-Fluent-Emojis/master/Emojis/Symbols/Triangular%20Flag.png" alt="Triangular Flag" width="25" height="25" /> Setup 

1. Clone the repository: `git clone https://github.com/hakrishi/bash-scripts.git`
2. Change directory to a script you would like to run: `cd docker`
3. Change the permissions of the script: `chmod +x backupDockerContainers.sh`
4. Run the script: `./backupDockerContainers.sh

Note that this process applies to all scripts within this repository

### <img src="https://raw.githubusercontent.com/Tarikul-Islam-Anik/Animated-Fluent-Emojis/master/Emojis/Objects/Gear.png" alt="Gear" width="25" height="25" /> Cron Job Setup


You may find it useful to run scripts automatically on Linux, this is where Cron Jobs comes into play. To setup CronJobs following the below steps:

1. Run `crontab -e` 
2. On the very last line add the following: `0 14 * * 0 /path/to/script.sh`
3. Save the file then exit 

While the above example runs the script every Sunday at 2PM you can set your own Cron Job [here](https://crontab.guru/)

# <img src="https://raw.githubusercontent.com/Tarikul-Islam-Anik/Animated-Fluent-Emojis/master/Emojis/Hand%20gestures/Handshake.png" alt="Handshake" width="25" height="25" /> Contributions

As always if you find any bugs or issues with the code feel free to open a pull request! 😃