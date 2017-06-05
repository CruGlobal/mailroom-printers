#!/bin/bash
# Install PIP by running the following:
echo "Installing pip:"
easy_install --user pip

# Add python to the path by running the following:
echo "Installing python to the path"
printf 'if [ -f ~/.bashrc ]; then\n  source ~/.bashrc\nfi\n' >> $HOME/.profile  
printf 'export PATH=$PATH:$HOME/Library/Python/2.7/bin\n' >> $HOME/.bashrc  
source $HOME/.profile

# Verify pip is running by running the following:
echo "Verifying pip:"
pip --version

echo "please run the following command or restart your shell:"
echo "source $HOME/.profile"
