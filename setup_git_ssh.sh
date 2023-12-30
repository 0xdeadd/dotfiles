#!/bin/bash

# Install Git and SSH
sudo apt update
sudo apt install git ssh

# Configure Git with your username and email
git config --global user.name "0xdeadd"
git config --global user.email "0xdead@tutanota.com"

# Generate SSH key (if needed)
ssh-keygen -t rsa -b 4096 -C "0xdead@tutanota.com"

# Add the public key to your GitHub account
cat ~/.ssh/id_rsa.pub
# Copy the output and add it to your SSH keys on GitHub

# Test SSH connection to GitHub
ssh -T git@github.com
