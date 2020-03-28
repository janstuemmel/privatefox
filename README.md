# PrivateFox

Password protected Firefox. A simple script to password-protect your firefox browser. This works by encrypting a firefox profile directory. After entering a pasword the folder get's decrypted and firefox starts with the decrypted profile folder.

## Requirements

* A gtk desktop with `zentity` installed
* Firefox browser
* `encfs` for encryption

## Install

### `wget`

```sh
wget https://github.com/janstuemmel/privatefox/archive/master.tar.gz -O - | tar zxf - && \
sudo mv privatefox-master /opt/privatefox && \
cp privatefox.desktop ~/.local/share/applications/privatefox.desktop
```

### `curl`

```sh
curl -L https://github.com/janstuemmel/privatefox/archive/master.tar.gz | tar zxf - && \
sudo mv privatefox-master /opt/privatefox && \
cp privatefox.desktop ~/.local/share/applications/privatefox.desktop
```

## Uninstall

```sh
rm -rf ~/.privatefox ~/.local/share/applications/privatefox.desktop && \
sudo rm -rf /opt/privatefox 
```

## Resources

Icon made by [Freepik](https://www.flaticon.com/authors/freepik) from [www.flaticon.com](http://www.flaticon.com/)

## License 

MIT
