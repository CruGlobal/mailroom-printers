#!/bin/bash
# Install ansible via PIP by running:
echo ""
echo "Installing ansible:"
pip install --user --upgrade ansible

# Verify ansible by running the following:
echo ""
echo "Verifying ansible installation:"
type -a ansible
ansible --version

# Create the system-wide Ansible directory.
echo ""
echo "Creating system-wide Ansible directory:"
sudo mkdir /etc/ansible

# Copy the default Ansible configuration file to the system-wide Ansible directory.
echo ""
echo "Copying Ansible configuration to system-wide Ansible directory:"
sudo curl -L https://raw.githubusercontent.com/ansible/ansible/devel/examples/ansible.cfg -o /etc/ansible/ansible.cfg

# Verification (ignore Host file not found messages)
echo "Verify ansible configuration (ignore Host file not round messages):"
ansible localhost -m ping
ansible localhost -m setup -a 'filter=ansible_distribution'
ansible localhost -a 'uname -a'
