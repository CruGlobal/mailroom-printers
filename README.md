# mailroom-printers
Ansible project to create cru mailroom printers

Use git clone to download the project.
cd to the directory and you're on your way.

This project is currently only valid for OSX or MacOS but could be expanded.

In order to compile the CUPS filter, you'll need XCode available from the APP Store.

To define printer queues on your local machine for both the 7125VP printer and the iR110 printer (Actually the HD125 printer) to print standard PDFS, run "ansible-playbook -i hosts -v localhost-pdf.yml". This will create 2 printers on the local machine: 7125VP-PDF and iR110-PDF which will print a PDF on one of the mailroom printers with a command similar to "lp -d 7125VP-PDF my.pdf".
# setup on OSX
## Install Xcode:  
  * Open App Store from Dock  
  * Enter xcode in search and hit enter  
  * Click Get under Xcode  
  * Click Install App  
  * If necessary, enter Apple ID & Password and click Sign In  
  * When complete, the button under Xcode will turn to Open  
  * Open a terminal (if necessary, click the spyglass in the upper right, enter terminal and press enter  
  * Run sudo xcodebuild -license and enter your password when prompted.  
  * Hit enter to view the license agreement and continue hitting space until the black bar at the bottom disappears.  
  * Type agree and hit enter.

## Get the ansible playbook by running:  
  * cd ~  
  * mkdir CruGlobal  
  * cd CruGlobal  
  * git clone https://github.com/CruGlobal/mailroom-printers.git  
  * cd mailroom-printers

## Install PIP by running the following:  
  * easy_install --user pip

## Add python to the path by running the following:  
  * printf 'if [ -f ~/.bashrc ]; then\n  source ~/.bashrc\nfi\n' >> $HOME/.profile  
  * printf 'export PATH=$PATH:$HOME/Library/Python/2.7/bin\n' >> $HOME/.bashrc  
  * source $HOME/.profile

## Verify pip is running by running the following:  
  * pip --version

## Install ansible via PIP by running:  
  * pip install --user --upgrade ansible

## Verify ansible by running the following:  
  * type -a ansible  
  * ansible --version

## Create the system-wide Ansible directory.  
  * sudo mkdir /etc/ansible

## Copy the default Ansible configuration file to the system-wide Ansible directory.  
  * sudo curl -L https://raw.githubusercontent.com/ansible/ansible/devel/examples/ansible.cfg -o /etc/ansible/ansible.cfg

## Verification (ignore Host file not found messages)  
  * ansible localhost -m ping  
  * ansible localhost -m setup -a 'filter=ansible_distribution'  
  * ansible localhost -a 'uname -a'

## Raise open file descriptors value for Ansible >= 2.x  
  * launchctl limit maxfiles  
  * sudo launchctl limit maxfiles 262144 524288

## To persist, run the following:  
  * sudo cp -p limit.maxfiles.plist /Library/LaunchDaemons/limit.maxfiles.plist  
  * sudo chown root:wheel /Library/LaunchDaemons/limit.maxfiles.plist  
