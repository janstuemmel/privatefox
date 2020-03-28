#!/bin/bash

CONFIG=$HOME/.privatefox

mkdir -p $CONFIG/profile.encrypted $CONFIG/profile

password=$(zenity --password)

echo $password | encfs $CONFIG/profile.encrypted $CONFIG/profile -S --standard

if [ $? != 0 ]; then
  zenity --error --width 200 --text "Error. Check your password!"
  exit 1
fi

firefox --profile $CONFIG/profile --new-instance $@

fusermount -u $CONFIG/profile

if [ $? != 0 ]; then
  zenity --error --width 200 --text "Error unmounting private firefox  profile!"
fi
