--[[
This script is used to send a copy of the database to a remote backup location.
1. Find the size of the database
2. Alert the remote location of the size of backup
    2a. If the remote location cannot allocate enough space, alert the user and exit
3. Wait and listen for the remote location to have allocated space
4. Begin sending files to the remote location
]]

