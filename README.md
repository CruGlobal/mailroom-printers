# mailroom-printers
Ansible project to create cru mailroom printers

Use git clone to download the project.
cd to the directory and you're on your way.

This project is currently only valid for OSX or MacOS but could be expanded. See the section below to setup on OSX.

To define printer queues on your local machine for both the 7125VP printer and the iR110 printer (Actually the HD125 printer) to print standard PDFS, run "ansible-playbook -i hosts -v localhost-pdf.yml". This will create 2 printers on the local machine: 7125VP-PDF and iR110-PDF which will print a PDF on one of the mailroom printers with a command similar to "lp -d 7125VP-PDF my.pdf".
# setup on OSX
## Install Xcode command line tools:  
  * Click the spyglass in the upper right corner  
  * Type <strong>terminal</strong> and press enter  
  * Click in the open terminal window, type <strong>xcode-select --install</strong>, and press enter  
  * In the popup window, click <strong>Install</strong>  
  * In the bottom-right of the License Agreement window, click <strong>Agree</strong>  
  * When the popup shows "The software was installed.", click <strong>Done</strong>  

## Get the ansible playbook by running:  
  * cd ~  
  * mkdir CruGlobal  
  * cd CruGlobal  
  * git clone https://github.com/CruGlobal/mailroom-printers.git  
  * cd mailroom-printers

## Install PIP by running the following:  
  * bash install-pip.sh

## Install ansible via PIP by running:  
  * bash install-ansible.sh

## setup ssh to root by running:  
  * bash setup-ssh.sh
