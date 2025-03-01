# AWS Ansible Project

This repository contains Ansible playbooks and roles for provisioning and managing AWS infrastructure, specifically EC2 instances.

## 📌 Features
- Provision AWS EC2 instances using Ansible
- Secure AWS credentials using Ansible Vault
- Use Ansible roles and variables for modularity
- Automate infrastructure deployment

## 🚀 Prerequisites
- Install Ansible: `pip install ansible`
- Install AWS dependencies: `ansible-galaxy collection install amazon.aws`
- Install AWS SDK for Python: `pip install boto3 botocore`
- Configure AWS credentials securely using Ansible Vault

## 📂 Project Structure
```
aws-ansible-project/
├── README.md          # Project documentation
├── ansible.cfg        # Ansible configuration file
├── inventory/
│   ├── hosts         # Inventory file for managed nodes
│   ├── group_vars/
│   │   ├── all.yml   # Global variables
├── roles/
│   ├── ec2_instance/
│   │   ├── tasks/
│   │   │   ├── main.yml  # Playbook tasks for EC2 provisioning
│   │   ├── defaults/
│   │   │   ├── main.yml  # Default role variables
│   │   ├── vars/
│   │   │   ├── main.yml  # Custom variables
│   │   ├── templates/
│   │   ├── handlers/
│   │   ├── meta/
│   │   ├── files/
├── playbooks/
│   ├── create_ec2.yml  # Playbook for EC2 provisioning
│   ├── terminate_ec2.yml # Playbook for EC2 termination
├── vars/
│   ├── vault.yml        # Encrypted AWS credentials
├── scripts/
│   ├── setup_ansible.sh # Ansible setup script
│   ├── encrypt_vault.sh # Script to encrypt vault
```

## 🔧 Setup Instructions
1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/aws-ansible-project.git
   cd aws-ansible-project
   ```
2. **Install dependencies**
   ```bash
   pip install ansible boto3 botocore
   ansible-galaxy collection install amazon.aws
   ```
3. **Secure AWS credentials using Ansible Vault**
   ```bash
   ansible-vault create vars/vault.yml
   ```
   - Add your AWS credentials inside `vault.yml`:
     ```yaml
     aws_access_key: YOUR_ACCESS_KEY
     aws_secret_key: YOUR_SECRET_KEY
     ```
   - Save and exit (`ESC` → `:wq`)
4. **Run the playbook to launch an EC2 instance**
   ```bash
   ansible-playbook playbooks/create_ec2.yml --ask-vault-pass
   ```

## 🛠 Managing Infrastructure
- **List running EC2 instances:**
  ```bash
  aws ec2 describe-instances --query 'Reservations[*].Instances[*].InstanceId' --output table
  ```
- **Terminate an EC2 instance:**
  ```bash
  ansible-playbook playbooks/terminate_ec2.yml --ask-vault-pass
  ```

## 🔐 Best Practices
- Use `ansible-vault` to **encrypt AWS credentials**
- Store variables in `group_vars/` for modular configuration
- Regularly rotate **AWS access keys** for security

## 📜 License
This project is licensed under the MIT License.

---

Happy automating! Using Ansible💡
