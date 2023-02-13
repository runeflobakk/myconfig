# My Configuration


## SMB Performance

### Disable writing .DS_Store on network volumes

```sh
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool TRUE
```

See also [HT208209 at Apple][apple-disable-network-dsstore].



### Disable packet signing on SMB server

```sh
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server SigningRequired -bool FALSE
```

Client packet signing disabling is configured by linking [nsmb.conf](smb/etc/nsmb.conf) to `/etc/nsmb.conf`.
See also [HT205926 at Apple][apple-disable-smb-signing] and [article at Promise][promise-disable-smb-signing].






[promise-disable-smb-signing]: https://kb.promise.com/thread/disable-smb-signing-on-os-x-10-11-5-10-12-x/
[apple-disable-smb-signing]: https://support.apple.com/en-us/HT205926
[apple-disable-network-dsstore]: https://support.apple.com/en-my/HT208209