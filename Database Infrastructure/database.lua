--[[
This file is a library that holds custom wrapper functions to make working with a csv easier. 
]]

local database = {}

---This function is used to prompt a different machine to read a file and return its data in entirety.
---@param filename string filename of the file to be read; includes the path to the specified file
---@param remoteAddress string address of the remote machine that sends the file data to the machine that called this function
---@return string|nil -- returns the data from the file OR nil if there was some error that prevented the reading
function database.remoteRead(filename, remoteAddress)
    return nil
end

---This function is used to prompt a different machine to write to the specified file, using the specified write mode, and the specified data.
---@param filename string filename of the file to be written to; includes the path to the specified file
---@param remoteAddress string address of the remote machine that receives the file data from this function call
---@param writeData string data that is to be written to specified file
---@param writeMode string? 'a'|'w' - default is 'a' which denotes append; 'w' denotes overwrite
---@return boolean -- returns true if data was successfully written to the file, false if not for any reason
function database.remoteWrite(filename, remoteAddress, writeData, writeMode)
    writeMode = writeMode or "a"
    return nil
end

---This function is used when a database manager receives a request to read one of its files.
---@param filename string filename of the file to be read; includes the path to the specified file
---@param remoteAddress string address of the remote machine that initiated the request
---@return boolean -- returns true if file data was sent, false if not for any reason
function database.localRead(filename, remoteAddress)
    local f = require("filesystem")
    return nil
end

---This function is used to write received data from a remote machine to a specified file, using the specified write mode
---@param filename string filename of the file to be written to; includes the path to the specified file
---@param remoteAddress string address of the remote machine that initiated the request
---@param writeData string data that is to be written to specified file
---@param writeMode string? 'a'|'w' - default is 'a' which denotes append; 'w' denotes overwrite
---@return nil
function database.localWrite(filename, remoteAddress, writeData, writeMode)
    writeMode = writeMode or "a"
    return nil
end

return database