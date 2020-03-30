userdata.sh

#! /bin/bash
sudo yum  update -y
sudo yum install httpd -y
sudo service httpd start
sudo sudo yum-config-manager --enable epel
sudo yum install ansible -y
echo "<h1>Deployed via Terraform</h1>" | sudo tee /var/www/html/index.html
echo "localhost ansible_connection=local" | sudo tee etc/ansible/hosts
cat > install.yml << EOF
---
  - name: "Installing wget"
    hosts: localhost
    connection: local
    tasks:
      - name: Install wget
        yum: name=wget state=latest
EOF
sudo chmod 777 install.yml
ansible-playbook install.yml
