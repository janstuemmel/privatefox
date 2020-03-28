#!/bin/bash

CONFIG=$HOME/.privatefox

# create directories if not exist
mkdir -p $CONFIG/profile.encrypted $CONFIG/profile

# check if already mounted
findmnt $CONFIG/profile

# throw when profile already mounted
if [ $? == 0 ]; then
  zenity --error --width 200 --text "Privatefox profile directory already mounted!"
  exit 1
fi

# read password
password=$(zenity --password)

# throw when password empty
if [ -z $password ]; then
  zenity --error --width 200 --text "Password cannot be empty!"
  exit 1
fi

# decrypt
echo $password | encfs $CONFIG/profile.encrypted $CONFIG/profile -S --standard

# throw when mounting fails
if [ $? != 0 ]; then
  zenity --error --width 200 --text "Error. Check your password!"
  exit 1
fi

# start firefox
firefox --profile $CONFIG/profile --new-instance $@

# unmount/decrypt profile
fusermount -u $CONFIG/profile

# throw when unmounting fails
if [ $? != 0 ]; then
  zenity --error --width 200 --text "Error unmounting Privatefox profile!"
fi
