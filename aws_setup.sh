#!/bin/bash

#Update
pacman -Syu --noconfirm

#install
pacman -S --noconfirm base-devel git python-pip python2-pip wget socat

#create gg user and group
useradd --system ggc_user
groupadd --system ggc_group

#get dependency checker
git clone https://github.com/aws-samples/aws-greengrass-samples.git
git clone 

#Unpack Certs
tar -xzvf greengrass-armv7l-1.7.0.tar.gz -C /
cd /greengrass/certs
wget -O root.ca.pem https://www.amazontrust.com/repository/AmazonRootCA1.pem

#add ggc_user to modem user uucp
usermod -a -G uucp ggc_user


