#!/bin/bash
sudo yum update
sudo yum install httpd -y
sudo yum install -y ruby wget
cd /home/ec2-user
wget https://aws-codedeploy-us-west-2.s3.us-west-2.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
sudo service codedeploy-agent start


#Use this script in your User Data Section to Setup your Instance for AWS Pipeline.
