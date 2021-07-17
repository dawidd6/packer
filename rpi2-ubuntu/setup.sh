#!/bin/bash

# DNS setting
rm /etc/resolv.conf
echo nameserver 1.1.1.1 > /etc/resolv.conf

# Enable ssh
touch /boot/ssh

# Add keys
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | apt-key add -

# Add repos
echo deb http://pkg.jenkins-ci.org/debian binary/ | tee /etc/apt/sources.list.d/jenkins.list

# Packages installation/removal
apt-get update
apt-get remove -y --purge snapd
apt-get autoremove -y --purge
apt-get install -y docker.io jenkins openjdk-11-jdk-headless
