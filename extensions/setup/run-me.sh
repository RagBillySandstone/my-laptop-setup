#!/bin/bash

# Check if root
# setup.sh needs to make sure paths are okay we need to run Ansible as a normal
[[ "$(whoami)" == "root" ]] && msg_exit "Please run as an unprivileged user."

# Update the repo cache (necessary before first apt-get)
sudo apt-get update

# Install packages necessary to setup the environment
sudo apt-get -y install build-essential python-dev python-setuptools aptitude git
sudo easy_install pip

mkdir ~/Code
cd ~/Code
git clone https://github.com/RagBillySandstone/my-laptop-setup.git
/bin/bash ~/Code/my-laptop-setup/extensions/setup/setup.sh

sudo ansible-galaxy install -r  ~/Code/my-laptop-setup/requirements.yml

sudo ansible-playbook ~/Code/my-laptop-setup/workstation-setup.yml
