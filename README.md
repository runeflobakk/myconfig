# My Configuration


## SMB Performance

### Disable writing .DS_Store on network volumes

```sh
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool TRUE
```
(see https://support.apple.com/en-my/HT208209)
