# Steam Shortcut Converter
Convert windows .url shortcuts to regular .lnk shortcuts

This powershell script will look for all .url shortcuts on the Desktop and convert them to regular shortcuts. I built this primarily so I could add steam games to the taskbar ( as you can't add url shortcuts to the taskbar or the start menu ).

This script adds a converted_shortcuts folder on the desktop and moves each url shortcut there after it converts them. It does this so that the script can be run periodically to convert shortcuts on the desktop.

# Additional information
I tested this on windows 10. After the script runs, windows/explorer may not refresh the desktop view to show that the icons have been moved. You may need to right click the desktop and select "Refresh" to show that the icons have been processed correctly.

# How to run
Download the project via https://github.com/h3knix/steamshortcutconverter/archive/master.zip , extract the zip archive. You may be able to run it by double clicking "run.bat", if that doesn't execute the program then you will need to right click the convert.ps1 file and select "Run with Powershell". The script will examine all shortcuts on the desktop and convert the url shortcuts to regular shortcuts.
