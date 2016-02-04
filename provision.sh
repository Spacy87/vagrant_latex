#!/usr/bin/env bash
echo "Updating repos and upgrading system..."
apt-get update > /dev/null 2>&1
apt-get -y upgrade > /dev/null 2>&1
echo "Done."
echo "Setup environment:"
echo "Installing texlive-latex-extra..."
apt-get -y install texlive-latex-extra > /dev/null 2>&1
echo "Installing latexmk..."
apt-get -y install latexmk > /dev/null 2>&1

apt-get -y install texlive-fonts-recommended > /dev/null 2>&1

echo "Installing languages (finnish, swedish)..."
apt-get -y install texlive-lang-finnish > /dev/null 2>&1
apt-get -y install texlive-lang-swedish > /dev/null 2>&1

echo "Installing pip"
wget https://raw.githubusercontent.com/pypa/pip/master/contrib/get-pip.py
sudo python get-pip.py
sudo pip install pyopenssl ndg-httpsclient pyasn1

echo "Install pygments"
sudo pip install pygments

echo "Environment setup done."
echo "Happy thesis writing!"
