This subfolder houses the script infrastructure that our databases will be built on.

It is intended that databases, CSVs, and other long-term data storage 'placeholders' will be housed in a central, secure datacenter.

To avoid collisions, each location will have either a single machine that handles both the read and write requests OR two machines, each one dedicated to either read requests or write requests. (Undecided and untested - initially leaning towards two machines because of background/foreground script shenanigans)

When an external machine wants to read data off of the existing files, it will send a request to the appropriate machine which will then send the back the correct file data.

Similarly, when a machine wants to write to a file, it will send the data to update to the appropriate machine which will then update the file. Should multiple machines wish to write to the same file at the same time, collision detection will handle the discrepancies. (Haven't quite figured that out yet) (Possibly implement a read-time tracker)

Should a machine attempt to read a file that does not exist, an error code will be returned that signifies the non-existence of the specified file.

Conversely, should a machine attempt to write to a file that does not exist, a corresponding file will be created.