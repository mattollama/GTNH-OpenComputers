--[[
This script will be used to manage the states of backups. It will both receive the copy of
data to save locally AND send a copy of a backup when prompted.

This script will wait and listen indefinitely until it receives a download request or an upload request.
Upon receiving either request, it will send confirmation to the other machine that the request has been received.

In the event of a DOWNLOAD request:
1. Index all available backups and send a list of them with there age back to the machine that initiated the request
2. Wait and listen for the user input on the other machine indicating which backup to use
3. Begin sending copy of the backup
4. Notify the other machine when the backup has finished sending

In the event of an UPLOAD request:
1. Receive the size of the backup to be uploaded
2. Look for a drive that has enough open space to house the backup
    2a. If there exists no drive that can safely fit the entire backup, check if deleting the oldest backup will
    free up enough space for the incoming backup
    2b. If deleting the oldest backup would not free up enough space AND the second oldest backup is on the same drive,
    check if deleting the second oldest backup as well would free up enough space
    2c. If no resolution is found, send an alert to the other machine that initiated the request that there is not
    enough space to safely backup and exit
3. If an appropriate amount of space can be allocated, send confirmation to the other machine
4. Wait and listen for the files to start being uploaded

Once the script has satisfied the request, it will return to the indefinite wait.
]]