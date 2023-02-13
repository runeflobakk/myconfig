# My Configuration


## SMB Performance

### Disable writing .DS_Store on network volumes

```sh
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool TRUE
```
(see https://support.apple.com/en-my/HT208209)


### Disable packet signing on SMB server

```sh
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server SigningRequired -bool FALSE
```

Client packet signing disabling is configured by linking [nsmb.conf](smb/etc/nsmb.conf) to `/etc/nsmb.conf` (see also https://support.apple.com/en-us/HT205926).
