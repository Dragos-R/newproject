userdata.sh

#! /bin/bash
sudo apt-get update
sudo apt install apache2 -y
sudo service apache2 start
sudo apt-get install ansible -y
echo "<h1>Deployed via Terraform</h1>" | sudo tee /var/www/html/index.html
echo "localhost ansible_connection=local" | sudo tee etc/ansible/hosts
cat > install.yml << EOF
---
  - name: "Playing with mysql"
    hosts: localhost
    connection: local
    tasks:
      - name: Install mysql
        yum: name=mysql-server state=installed
EOF
sudo chmod 777 install.yml
ansible-playbook install.yml
