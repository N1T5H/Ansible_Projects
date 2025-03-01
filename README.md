# Ansible Projects

Welcome to the Ansible Projects repository! This repository contains multiple projects demonstrating various use cases of Ansible, including AWS configuration, real-time automation, and policy-as-code enforcement. Additionally, it includes authentication mechanisms, such as password authentication for securing Ansible operations.

## What is Ansible?

Ansible is an open-source automation tool used for configuration management, application deployment, and infrastructure as code (IaC). It simplifies IT automation by using YAML-based playbooks, allowing you to manage servers, networks, and cloud services efficiently.

### Key Features:
- Agentless architecture (uses SSH/WinRM for communication)
- Simple YAML-based playbooks for automation
- Idempotent execution ensuring consistency
- Extensible with modules and plugins
- Supports cloud providers like AWS, Azure, and GCP

## Getting Started with Ansible

### Prerequisites
- Install Ansible on your control node (Linux/macOS)
- Python installed (Recommended: Python 3.6+)
- SSH access to target machines

### Installation
#### On Ubuntu/Debian:
```bash
sudo apt update
sudo apt install ansible -y
```

#### On RHEL/CentOS:
```bash
sudo yum install epel-release -y
sudo yum install ansible -y
```

#### On macOS:
```bash
brew install ansible
```

### Verify Installation
```bash
ansible --version
```

## Directory Structure
```bash
ansible-projects/
│-- aws-configuration/      # Automating AWS setup with Ansible
│-- realtime-project/       # Real-world use cases and automation examples
│-- policy-as-code/         # Enforcing security policies using Ansible
│-- authentication/         # Secure authentication setup, including password authentication
```

## Authentication: Password Authentication Setup
This repository includes a guide on setting up password authentication for Ansible. By default, Ansible uses SSH keys, but you can enable password authentication by:

1. Enabling SSH password authentication on target machines:
   ```bash
   sudo nano /etc/ssh/sshd_config
   ```
   Set the following:
   ```plaintext
   PasswordAuthentication yes
   ```
   Restart SSH service:
   ```bash
   sudo systemctl restart sshd
   ```

2. Running Ansible with password authentication:
   ```bash
   ansible all -m ping -u <username> --ask-pass
   ```

## How to Run Ansible Playbooks

Navigate to the project directory and execute the playbook:
```bash
ansible-playbook -i inventory.ini playbook.yml
```




Getting Started

1. Clone the Repository

git clone https://github.com/your-username/your-ansible-project.git
cd your-ansible-project


2. Define Inventory
Update the inventory file with target hosts:


3. Run a Playbook
Execute a playbook to configure servers:

ansible-playbook playbooks/setup.yml -i inventory/hosts


4. Check Connectivity
Verify Ansible can connect to the hosts:

ansible all -m ping -i inventory/hosts



Contributing

Contributions are welcome! Please submit issues or pull requests to improve the project.

License

This project is licensed under the MIT License.


---


