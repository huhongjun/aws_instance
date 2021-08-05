#!/bin/bash

sudo apt-get -y install unzip

echo "---> install awscli"
cd /tmp && \
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && sudo ./aws/install && rm awscliv2.zip && rm -rf aws && \
    aws --version

# https://linoxide.com/install-terraform-on-ubuntu-20-04/
echo "---> install terraform"
tfver=1.0.4 && wget https://releases.hashicorp.com/terraform/${tfver}/terraform_${tfver}_linux_amd64.zip
sudo unzip terraform_${tfver}_linux_amd64.zip
sudo mv terraform /usr/local/bin/

# uninstall terraform
# sudo rm -f /usr/local/bin/terraform

terraform version
