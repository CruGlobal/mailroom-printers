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
echo ""
echo "Verify ansible configuration (ignore Host file not round messages):"
ansible localhost -m ping
ansible localhost -m setup -a 'filter=ansible_distribution'
ansible localhost -a 'uname -a'

# Raise open file descriptors value for Ansible >= 2.x
echo ""
echo "Raise open file descriptors value for Ansible >= 2.x:"
launchctl limit maxfiles
sudo launchctl limit maxfiles 262144 524288

# Persist file descriptor change
echo ""
echo "# Persist file descriptor change:"
sudo cp -p limit.maxfiles.plist /Library/LaunchDaemons/limit.maxfiles.plist
sudo chown root:wheel /Library/LaunchDaemons/limit.maxfiles.plist
