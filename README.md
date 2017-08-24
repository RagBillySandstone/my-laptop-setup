Workstation setup
=================
## Setup my laptop the way I like it.

An Ansible playbook designed to be run immediately after a fresh install of Xubuntu 16.04.3 LTS. It uses bash scripts to install the basic software necessary to get Ansible up and running, then calls Ansible for the heavy lifting.

To run it, download the bash script, make it executable if necessary, then run it as an *unprivileged* user. The script will ask for your `sudo` password when it needs to.
```
wget https://github.com/RagBillySandstone/my-laptop-setup/blob/master/extensions/setup/run-me.sh
/bin/bash ./run-me.sh```
This playbook has been tested with Xubuntu 16.04.3.
While it may very well run on other Ubuntu-like distros, the results might be b'jankety because some of the configurations are specific to xfce4
