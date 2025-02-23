#!/bin/bash
echo "Installing Ansible and dependencies..."
pip install ansible boto3 botocore
ansible-galaxy collection install amazon.aws
echo "Setup complete!"
