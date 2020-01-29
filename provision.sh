#!/bin/bash

dnf install -y ansible git
cd /vagrant
# ansible-galaxy install -r requirements.yml
# ansible-galaxy collection install freeipa.ansible_freeipa
git clone https://github.com/freeipa/ansible-freeipa.git
cp playbook.yml ansible-freeipa/playbook.yml
cd ansible-freeipa
ansible-playbook playbook.yml