#!/bin/bash
# Install PIP by running the following:  
easy_install --user pip

# Add python to the path by running the following:  
printf 'if [ -f ~/.bashrc ]; then\n  source ~/.bashrc\nfi\n' >> $HOME/.profile  
printf 'export PATH=$PATH:$HOME/Library/Python/2.7/bin\n' >> $HOME/.bashrc  
source $HOME/.profile

# Verify pip is running by running the following:  
pip --version
