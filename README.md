# mailroom-printers
Ansible project to create cru mailroom printers

Use git clone to download the project.
cd to the directory and you're on your way.

This project is currently only valid for OSX or MacOS but could be expanded.

In order to compile the CUPS filter, you'll need XCode available from the APP Store.

To define printer queues on your local machine for both the 7125VP printer and the iR110 printer (Actually the HD125 printer) to print standard PDFS, run "ansible-playbook -i hosts -v localhost-pdf.yml". This will create 2 printers on the local machine: 7125VP-PDF and iR110-PDF which will print a PDF on one of the mailroom printers with a command similar to "lp -d 7125VP-PDF my.pdf".
