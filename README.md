# working-directory-tracker
A short bash script that can be added to your .bashrc to save the current working directory in RAM, so that the next terminal window opened is in the same working directory as the last.

## Details 
When using a tiling window manager, it can be frustrating when you just want to open a new terminal in the directory you're already in, and instead have to change directory in the new terminal window. While some terminal emulators such as ST allow you to patch in this feature, however I was looking for a more elegant solution. This script uses the PROMPT_COMMAND to write the current working directory to a file in the tmpfs space /dev/shm/, RAM, to avoid consistantly writing to secondary storage. This directory is then loaded when a new terminal is opened. 
	
## Installation
The easiest way to use this script is to add it directly to your .bashrc. This can be done manually or automatically by running this command from the directory you download wdt.sh to:

```
cat wdt.sh >> ~/.bashrc
```
