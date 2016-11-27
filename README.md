# Steam Shortcut Converter
Convert windows .url shortcuts to regular .lnk shortcuts

This powershell script will look for all .url shortcuts on the Desktop and convert them to regular shortcuts. I built this primarily so I could add steam games to the taskbar ( as you can't add url shortcuts to the taskbar or the start menu ).

This script adds a converted_shortcuts folder on the desktop and moves each url shortcut there after it converts them. It does this so that the script can be run periodically to convert shortcuts on the desktop.

# Environment information
I tested this on win10

# How to run
Download the project via https://github.com/h3knix/steamshortcutconverter/archive/master.zip , extract the zip archive. Go into the folder then right click the convert.ps1 file and select "Run with Powershell". The script will examine all shortcuts on the desktop and convert the url shortcuts to regular shortcuts.
