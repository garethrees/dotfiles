#!/bin/bash
# Enable by running:
# defaults write com.apple.loginwindow LoginHook /path/to/loginfix.sh
#
# Source: http://osxdaily.com/2011/08/25/disable-reopen-windows-when-logging-back-in-in-mac-os-x-lion-completely/
rm /Users/*/Library/Preferences/ByHost/com.apple.loginwindow.*
