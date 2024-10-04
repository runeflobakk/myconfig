#!/usr/bin/env bash

echo 'Trackpad preferences'

echo '  three finger drag'
defaults write com.apple.AppleMultitouchTrackpad "TrackpadThreeFingerDrag" -bool "true"

echo '  tap to click'
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write 'Apple Global Domain' com.apple.mouse.tapBehavior 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

echo '  speed up'
defaults write -g com.apple.trackpad.scaling 3


# ----------------------------------------
echo 'Keyboard'

echo '  normal function keys'
defaults write NSGlobalDomain com.apple.keyboard.fnState -bool true

echo '  fast repeat rate'
defaults write -g KeyRepeat -int 1

echo '  fast initial delay before repeating'
defaults write -g InitialKeyRepeat -int 14

/System/Library/PrivateFrameworks/SystemAdministration.framework/Resources/activateSettings -u



# -----------------------------------------
echo 'Dock'

echo '  autohide'
defaults write com.apple.dock "autohide" -bool "true"

echo '  do not show recent applications'
defaults write com.apple.dock "show-recents" -bool "false"

echo '  decrease size'
defaults write com.apple.dock tilesize -float 55

killall Dock



# ------------------------------------------
echo 'Finder'

echo '  default view list'
defaults write com.apple.finder "FXPreferredViewStyle" -string "Nlsv" 

echo '  sort folders first'
defaults write com.apple.finder "_FXSortFoldersFirst" -bool "true"

echo '  default search scope current folder'
defaults write com.apple.finder "FXDefaultSearchScope" -string "SCcf"

echo '  save to disk by default, instead of iCloud'
defaults write NSGlobalDomain "NSDocumentSaveNewDocumentsToCloud" -bool "false"




# --------------------------------------------
echo 'Desktop'

echo '  show harddisks'
defaults write com.apple.finder "ShowHardDrivesOnDesktop" -bool "true"

echo '  show connected servers'
defaults write com.apple.finder "ShowMountedServersOnDesktop" -bool "true"

killall Finder 2> /dev/null



# ----------------------------------------------
echo 'SMB file sharing'

echo '  disable writing .DS_Store on network volumes'
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool "true"

echo '  disable packet signing on SMB server (sudo, will ask for password)'
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server SigningRequired -bool "true"


# ----------------------------------------------
echo 'USB Volumes'

echo '  disable writing .DS_Store'
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool "true"