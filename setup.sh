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
echo "Environment setup done."
echo "Happy latexing!"
