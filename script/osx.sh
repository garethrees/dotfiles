#!/usr/bin/env sh
 
##
# This is script with useful tips taken from:
#   https://github.com/mathiasbynens/dotfiles/blob/master/.osx
#
# install it:
#   curl -sL https://raw.github.com/gist/2108403/hack.sh | sh
#

echo "Enable subpixel font rendering on non-Apple LCDs (1 light, 2 medium, 3 big)"
defaults write NSGlobalDomain AppleFontSmoothing -int 2

echo "Minimum font size for antialiasing"
defaults write NSGlobalDomain AppleAntiAliasingThreshold -int 2

# echo "Sidebar icon size Small"
# defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 1

echo "Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs)"
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

echo "Remove slow animations when holding shift"
defaults write NSGlobalDomain FXEnableSlowAnimation -bool false

# echo "Enable the 2D Dock"
# defaults write com.apple.dock no-glass -bool true

echo "Automatically hide and show the Dock"
defaults write com.apple.dock autohide -bool true

echo "Speed up dock show"
defaults write com.apple.Dock autohide-delay -float 0

echo "Remove the delay for showing the Dock in full screen"
defaults write com.apple.dock autohide-fullscreen-delayed -bool false

echo "Minimize in application"
defaults write com.apple.dock minimize-to-application -bool true

# Put the dock show back to normal
# defaults delete com.apple.Dock autohide-delay

# echo "Make Dock icons of hidden applications translucent"
# defaults write com.apple.dock showhidden -bool true

# echo "Enable iTunes track notifications in the Dock"
# defaults write com.apple.dock itunes-notifications -bool true

# Disable menu bar transparency
# defaults write NSGlobalDomain AppleEnableMenuBarTransparency -bool false

echo "Show remaining battery time; hide percentage"
defaults write com.apple.menuextra.battery ShowPercent -string "NO"
defaults write com.apple.menuextra.battery ShowTime -string "YES"

# echo "Always show scrollbars"
# defaults write NSGlobalDomain AppleShowScrollBars -string "Auto"

# echo "Allow quitting Finder via ⌘ + Q; doing so will also hide desktop icons"
# defaults write com.apple.finder QuitMenuItem -bool true

echo "Disable window animations and Get Info animations in Finder"
defaults write com.apple.finder DisableAllAnimations -bool true

# echo "Show all filename extensions in Finder"
# defaults write NSGlobalDomain AppleShowAllExtensions -bool true

echo "Use current directory as default search scope in Finder"
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

echo "Show Path bar in Finder"
defaults write com.apple.finder ShowPathbar -bool true

# echo "Show Status bar in Finder"
# defaults write com.apple.finder ShowStatusBar -bool true

echo "Expand save panel by default"
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

echo "Expand print panel by default"
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

echo "Disable the “Are you sure you want to open this application?” dialog"
defaults write com.apple.LaunchServices LSQuarantine -bool false

echo "Disable shadow in screenshots"
defaults write com.apple.screencapture disable-shadow -bool true

echo "Save screenshots as PNG"
defaults write com.apple.screencapture type png

echo "Save screenshots to Downloads"
defaults write com.apple.screencapture location "${HOME}/Downloads"

echo "Enable highlight hover effect for the grid view of a stack (Dock)"
defaults write com.apple.dock mouse-over-hilte-stack -bool true

echo "Enable spring loading for all Dock items"
defaults write enable-spring-load-actions-on-all-items -bool true

echo "Show indicator lights for open applications in the Dock"
defaults write com.apple.dock show-process-indicators -bool true

# Don’t animate opening applications from the Dock
# defaults write com.apple.dock launchanim -bool false

echo "Display ASCII control characters using caret notation in standard text views"
# Try e.g. `cd /tmp; unidecode "\x{0000}" > cc.txt; open -e cc.txt`
# defaults write NSGlobalDomain NSTextShowsControlCharacters -bool true

# echo "Disable press-and-hold for keys in favor of key repeat"
# defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# echo "Set a blazingly fast keyboard repeat rate"
# defaults write NSGlobalDomain KeyRepeat -int 0.02

# echo "Set a shorter Delay until key repeat"
# defaults write NSGlobalDomain InitialKeyRepeat -int 12

echo "Automatically illuminate built-in MacBook keyboard in low light"
defaults write com.apple.BezelServices kDim -bool true

echo 'Turn off keyboard illumination when computer is not used for 5 minutes'
defaults write com.apple.BezelServices kDimTime -int 300

echo "Disable auto-correct"
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Disable opening and closing window animations
# defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

echo "Enable AirDrop over Ethernet and on unsupported Macs running Lion"
defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool true

echo "Disable disk image verification"
defaults write com.apple.frameworks.diskimages skip-verify -bool true
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true

echo "Automatically open a new Finder window when a volume is mounted"
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true

echo "Display full POSIX path as Finder window title"
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

echo "Increase window resize speed for Cocoa applications"
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

echo "Avoid creating .DS_Store files on network volumes"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

echo "Disable the warning when changing a file extension"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# echo "Show item info below desktop icons"
# /usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist

echo "Enable snap-to-grid for desktop icons"
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist

echo "Disable the warning before emptying the Trash"
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Empty Trash securely by default
# defaults write com.apple.finder EmptyTrashSecurely -bool true

# echo "Require password immediately after sleep or screen saver begins"
# defaults write com.apple.screensaver askForPassword -int 1
# defaults write com.apple.screensaver askForPasswordDelay -int 0

"Enable tap to click on Trackpad and login screen"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write com.apple.mouse.tapBehaviour -int 1

echo "Disable Natural Scroll Direction"
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# echo "Map bottom right Trackpad corner to right-click"
# defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 2
# defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true

echo "Disable Safari’s thumbnail cache for History and Top Sites"
defaults write com.apple.Safari DebugSnapshotsUpdatePolicy -int 2

echo "Enable Safari’s debug menu"
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

echo "Make Safari’s search banners default to Contains instead of Starts With"
defaults write com.apple.Safari FindOnPageMatchesWordStartsOnly -bool false

echo "Remove useless icons from Safari’s bookmarks bar"
defaults write com.apple.Safari ProxiesInBookmarksBar "()"

echo "Add a context menu item for showing the Web Inspector in web views"
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

echo "Only use UTF-8 in Terminal.app"
defaults write com.apple.terminal StringEncodings -array 4

echo "Disable the Ping sidebar in iTunes"
defaults write com.apple.iTunes disablePingSidebar -bool true

echo "Disable all the other Ping stuff in iTunes"
defaults write com.apple.iTunes disablePing -bool true

echo "Make ⌘ + F focus the search input in iTunes"
defaults write com.apple.iTunes NSUserKeyEquivalents -dict-add "Target Search Field" "@F"

# Disable send and reply animations in Mail.app
# defaults write com.apple.Mail DisableReplyAnimations -bool true
# defaults write com.apple.Mail DisableSendAnimations -bool true

# Disable Resume system-wide
# defaults write NSGlobalDomain NSQuitAlwaysKeepsWindows -bool false

echo "Disable the “reopen windows when logging back in” option"
# This works, although the checkbox will still appear to be checked.
defaults write com.apple.loginwindow TALLogoutSavesState -bool false
defaults write com.apple.loginwindow LoginwindowLaunchesRelaunchApps -bool false

echo "Enable Dashboard dev mode (allows keeping widgets on the desktop)"
defaults write com.apple.dashboard devmode -bool true

echo "Disable the Dashboard"
defaults write com.apple.dashboard mcx-disabled -bool true

echo "Don’t show Dashboard as a Space"
defaults write com.apple.dock dashboard-in-overlay -bool true

echo "Don’t automatically rearrange Spaces based on most recent use"
defaults write com.apple.dock mru-spaces -bool false

echo "Reset Launchpad"
find ~/Library/Application\ Support/Dock -name "*.db" -maxdepth 1 -delete

echo "Show the ~/Library folder"
chflags nohidden ~/Library

echo "DOWNLOAD QLStephen to view all plain text files with QuickLook"
echo "http://coderwall.com/p/dlithw"

echo "Allow text selection in Quick Look"
defaults write com.apple.finder QLEnableTextSelection -bool true;

# echo "Disable local Time Machine backups"
# hash tmutil &> /dev/null && sudo tmutil disablelocal

echo "Prevent Time Machine from prompting to use new hard drives as backup volume"
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# echo "Remove Dropbox’s green checkmark icons in Finder"
# file=/Applications/Dropbox.app/Contents/Resources/check.icns
# [ -e "$file" ] && mv -f "$file" "$file.bak"
# unset file

#Fix for the ancient UTF-8 bug in QuickLook (http://mths.be/bbo)
# Commented out, as this is known to cause problems when saving files in Adobe Illustrator CS5 :(
#echo "0x08000100:0" > ~/.CFUserTextEncoding

echo "Set language and text formats"
# Note: if you’re in the US, replace `EUR` with `USD`, `Centimeters` with
# `Inches`, `en_GB` with `en_US`, and `true` with `false`.
defaults write NSGlobalDomain AppleLanguages -array "en"
defaults write NSGlobalDomain AppleLocale -string "en_GB@currency=GBP"
defaults write NSGlobalDomain AppleMeasurementUnits -string "Centimeters"
defaults write NSGlobalDomain AppleMetricUnits -bool true

echo "Set the timezone; see systemsetup -listtimezones for other values"
systemsetup -settimezone "Europe/London" > /dev/null

echo "Set Desktop as the default location for new Finder windows"
# For other paths, use `PfLo` and `file:///full/path/here/`
defaults write com.apple.finder NewWindowTarget -string "PfLo"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/"

echo "Hide icons for hard drives, servers, and removable media on the desktop"
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowMountedServersOnDesktop -bool false
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false

echo "Use list view in all Finder windows by default"
# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

echo "Kill affected applications"
for app in Safari Finder Dock Mail SystemUIServer; do killall "$app" >/dev/null 2>&1; done
