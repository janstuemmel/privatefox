# PrivateFox

Password protected Firefox. A simple script to password-protect your firefox browser. This works by encrypting a firefox profile directory. After entering a pasword the folder get's decrypted and firefox starts with the decrypted profile folder.

## Requirements

* `firefox` - Firefox browser has to be installed
* `zenity` - A gui tool to ask for the password
* `encfs` - Encrypt/Decrypt profile folder

## Install

Asuming you're on a debian derivate. 

```sh
sudo wget https://raw.githubusercontent.com/janstuemmel/privatefox/master/privatefox.sh -o /usr/local/bin/privatefox
sudo chmod +x /usr/local/bin/privatefox
wget https://raw.githubusercontent.com/janstuemmel/privatefox/master/privatefox.desktop -o /.local/share/applications/privatefox.desktop
```

## License 

MIT