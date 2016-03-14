#!/usr/bin/env bash

# Script variabels for easy modification
PIP_LOCATION="https://bootstrap.pypa.io/get-pip.py"


echo "Installing python dependencies:"
echo "Installing pip"
wget $PIP_LOCATION > /dev/null 2>&1
sudo python get-pip.py > /dev/null 2>&1
sudo pip install pyopenssl ndg-httpsclient pyasn1 > /dev/null 2>&1

echo "Install pygments"
sudo pip install pygments > /dev/null 2>&1

echo "Clean up downloaded files."
rm get-pip.py

echo "Python dependencies setup completed."