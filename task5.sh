#!/bin/bash

chmod 755 "$1"
sudo mkdir -p /usr/local/bin
sudo cp "$1" /usr/local/bin/

echo "Команда $(basename "$1") зарегистрирована в /usr/local/bin"
