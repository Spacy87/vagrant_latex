#!/usr/bin/env bash

echo "Installing languages: "
echo "Finnish.."
apt-get -y install texlive-lang-finnish > /dev/null 2>&1
echo "Swedish.."
apt-get -y install texlive-lang-swedish > /dev/null 2>&1
echo "Extra languages installed."