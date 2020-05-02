#/bin/bash

sudo useradd -m -r -s /bin/bash -uid 65534 -g sudo ansible
sudo apt -y install ansible

cd /tmp
ssh-keygen -b 2048 -t rsa -q -f id_rsa -N ""
sudo mkdir /home/ansible/.ssh
sudo mv id_rsa /home/ansible/.ssh
sudo mv id_rsa.pub /home/ansible/.ssh
sudo chown ansible.ansible -R /home/ansible/.ssh
sudo chmod 600 /home/ansible/.ssh/id_rsa
sudo chmod 644 /home/ansible/.ssh/id_rsa.pub
