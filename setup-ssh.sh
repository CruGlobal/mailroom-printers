#!/bin/bash

if [[ ! -e .ssh ]]; then  
  sudo mkdir ~/.ssh
  sudo chmod 700 ~/.ssh
fi
if [[ ! -e ~root/.ssh ]]; then  
  sudo mkdir ~root/.ssh
  sudo chown root:wheel ~root/.ssh
  sudo chmod 700 ~root/.ssh
fi
if [[ ! -e ~/.ssh/id_rsa ]]; then
  ssh-keygen -t rsa -q -f ~/.ssh/id_rsa -P ''
fi
cat ~/.ssh/id-rsa.pub sudo 'cat >>~/.ssh/authorized_keys'
sudo chown root:wheel ~root/.ssh/authorized_keys
sudo chmod 600 ~root.ssh/authorized_keys
