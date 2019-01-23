#!/bin/bash

#Update
pacman -Syu --noconfirm

#install
pacman -S --noconfirm base-devel python-pip python2-pip wget socat

#create gg user and group
useradd --system ggc_user
groupadd --system ggc_group

#get dependency checker
git clone https://github.com/aws-samples/aws-greengrass-samples.git


#add ggc_user to modem user uucp
usermod -a -G uucp ggc_user


