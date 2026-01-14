--[[
The 'autorun' file should be installed on ALL drives other than the boot drive.
This is because when a secondary drive is installed the machine will need to mount the drive on every reboot.
To avoid needing to do this manually, this script mounts it on boot automatically.

More functionality can be added to the end of this script should you need.

NOTE: The name of the directory is currently 'other'
To change this to whatever you need, just edit that part once you have downloaded this script to the drive.
]]

local fs = require("filesystem")
local proxy = ...
fs.mount(proxy, "/other")