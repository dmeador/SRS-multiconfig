# SRS-multiconfig
A simple config tool which helps manage multiple configs for SimpleRadioStandalone (SRS).
The intent is to prevent having multiple installs of SRS on the same machine and also provide a simple way to swap different configurations.

This is implemented as a Windows batch file which either swaps between multiple saved SRS client configurations (if the parameters resolve to an existing filename), such as A10, F16, F18, etc.  If the current config does not exist, it will ask to save the config to the file named with the airframe extension (for example, client.cfg.A10), and then upon the next run the batch file the config will be swapped.

It is intended that you create a shortcut with running the configtool.cmd and the desired airframe file extension as a command line parameter.

Run configtool.cmd within the same directory as the installed SR-ClientRadio.exe installation.

