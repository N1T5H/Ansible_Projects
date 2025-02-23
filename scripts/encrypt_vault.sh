#!/bin/bash
echo "Encrypting Ansible Vault..."
ansible-vault encrypt vars/vault.yml
echo "Vault encrypted!"
