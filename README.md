# SRS-multiconfig

## Purpose
A simple config tool which helps manage multiple configs for SimpleRadioStandalone (SRS).
The intent is to prevent having multiple installs of SRS on the same machine and also provide a simple way to swap different configurations.

This is implemented as a Windows batch file which either swaps between multiple saved SRS client configurations (if the parameters resolve to an existing filename), such as A10, F16, F18, etc.  If the current config does not exist, it will ask to save the config to the file named with the airframe extension (for example, client.cfg.A10), and then upon the next run the batch file the config will be swapped.

It is intended that you create a shortcut with running the configtool.cmd and the desired airframe file extension as a command line parameter.

Run configtool.cmd within the same directory as the installed SR-ClientRadio.exe installation.

## Manual Installation & Setup

Obtain the ConfigTool.cmd file from github [right-click link, and select "save link as..."] (https://raw.githubusercontent.com/dmeador/SRS-multiconfig/master/ConfigTool.cmd), and place it in your SRS install directory.
For example (replace username with your-user-name), and change path to your SRS install directory:
C:\Users\username\DCS\DCS-SRS\DCS-SimpleRadio-Standalone

Open a command prompt

{Windows-Key}+R

In the edit window, 
Type: "cmd" and then click "OK".
 
At the command prompt:
```
cd "C:\Users\username\DCS\DCS-SRS\DCS-SimpleRadio-Standalone"
```

Configure SRS as desired via SR-RadioClient.exe program "Settings" interface (for example A10 configuration).  Once configuration is completed, save config, and exit SRS.

Remove any existing config files, and run configtool to save the current config to a file:
```
del client.cfg.A10
ConfigTool.cmd A10
  file "client.cfg.A10" does not exist
  Do you want to create configfile "A10"?
  Type [Y/n]: Y
```

Configure SRS as desired via SR-RadioClient.exe program "Settings" interface (for example F16 configuration).  Once configuration is completed, save config, and exit SRS.

Remove any existing config files, and run configtool to save the current config to a file:
```
del client.cfg.F16
ConfigTool.cmd F16
  file "client.cfg.F16" does not exist
  Do you want to create configfile "F16"?
  Type [Y/n]: Y
```

## Normal Operation
Either manually or via a shortcut, perform the following commands:
When desiring to launch SRS with saved F16 configuration, execute cmd or shortcut ->
```
ConfigTool.cmd F16
```
When desiring to launch SRS with saved A10 configuration, execute cmd or shortcut ->
```
ConfigTool.cmd A10
```

## Final Step
Enjoy all the time saved by using the simple and easy configtool, and drink a toast to David, aka Stryker.
 
