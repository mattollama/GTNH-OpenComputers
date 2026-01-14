# GTNH-OpenComputers
Various programs used throughout GTNH playthrough

When attempting to import a file onto an in-game computer there are a few things to keep in mind.
- You must have an internet card installed on the machine
- The machine must have enough room for the script
- Pulling from GitHub requires the raw url

The raw url is simply just the normal url with '?raw=true' appended to the end.
For example:

normal url: https://github.com/mattollama/GTNH-OpenComputers/blob/main/testing/printTest.lua

raw url: https://github.com/mattollama/GTNH-OpenComputers/blob/main/testing/printTest.lua?raw=true

Then to actually import it, use the 'wget' command in the terminal
```
wget [-f] <raw url> [/path/to/destination]
```
The [-f] is optional and enables the command to overwrite an existing file with the same name at the specified destination.
The [/path/to/destination] is option and allows the user to specify exactly where to save the downloaded script. If omitted, the file will simply save to the current directory.