--[[
This script will be used to download a previous backup from a remote location.
1. Request a list of available backups from the remote location
2. Wait and listen for user input, selecting the backup to be downloaded
    2a. If there are no available backups, notify the user and exit
3. Tell the remote location which backup to send
4. Receive files from remote location and save them locally
]]

