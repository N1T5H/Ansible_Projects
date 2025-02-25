# 🚀 Ansible AWS Automation Project

## 📌 Overview
This project demonstrates **AWS automation using Ansible**, covering key DevOps practices such as **EC2 provisioning, passwordless authentication, and automated instance shutdown**. It was inspired by an **interview assignment** and is part of a hands-on learning series on Ansible.

## 🎯 Project Objectives
### ✅ **Task 1: Provision EC2 Instances**
- Use **Ansible loops** to create **three EC2 instances**:
  - **Two Ubuntu instances**
  - **One Amazon Linux instance**
- Configure **connection type as local** to execute tasks on the Ansible control node.
- Ensure **idempotency**, so running the playbook multiple times does not create duplicate instances.

### ✅ **Task 2: Set Up Passwordless Authentication**
- Enable **passwordless SSH access** from the Ansible control node to the EC2 instances.
- Use **SSH key-based authentication** with `ssh-copy-id`.
- Ensure secure storage of **private keys**.

### ✅ **Task 3: Automate Shutdown of Ubuntu Instances**
- Write an **Ansible playbook** to shut down **only Ubuntu instances**, leaving the Amazon Linux instance running.
- Use **Ansible conditionals (`when:` statements)** to filter instances based on their OS type.
- Extract **OS family type** using **Ansible facts**.
- Execute the shutdown command using **Ansible’s built-in command module**.

---

## 🔧 Prerequisites
- **AWS Account** with IAM user permissions for EC2.
- **Ansible Installed** (`pip install ansible`)
- **Boto3 Installed** (`pip install boto3`)
- **AWS Access Credentials** stored securely in **Ansible Vault**.

## 📂 Project Structure
```
📂 ansible-aws-automation
├── 📁 playbooks
│   ├── ec2_create.yaml        # Playbook to provision EC2 instances
│   ├── ec2_stop.yaml          # Playbook to shut down Ubuntu instances
│   └── inventory.ini          # Inventory file with EC2 instance details
├── 📁 configs
│   ├── ansible.cfg            # Ansible configuration file
│   ├── aws_credentials.yaml   # Encrypted AWS credentials (Ansible Vault)
│   ├── ssh_keys/              # Directory for SSH keys
├── README.md                  # Project Documentation
└── requirements.txt            # Python dependencies
```

---

## 🚀 How to Use
### 1️⃣ **Set Up AWS Credentials**
- Create an **IAM User** in AWS with EC2 permissions.
- Store **AWS Access Key & Secret Key** securely in **Ansible Vault**.
- Install the required **AWS collection**:
  ```sh
  ansible-galaxy collection install amazon.aws
  ```

### 2️⃣ **Provision EC2 Instances**
Run the Ansible playbook to create the instances:
```sh
ansible-playbook -i inventory.ini playbooks/ec2_create.yaml --ask-vault-pass
```

### 3️⃣ **Set Up Passwordless Authentication**
Use `ssh-copy-id` to enable passwordless authentication:
```sh
ssh-copy-id -i ~/.ssh/aws_key.pem ubuntu@<EC2-IP>
```

### 4️⃣ **Automate Shutdown of Ubuntu Instances**
Run the shutdown playbook to stop only Ubuntu instances:
```sh
ansible-playbook -i inventory.ini playbooks/ec2_stop.yaml --ask-vault-pass
```

---

## 📌 Key Features
✅ **Fully automated EC2 provisioning** via Ansible.  
✅ **Secure authentication** using SSH keys & Ansible Vault.  
✅ **AWS API interaction** using Boto3 & Ansible AWS collection.  
✅ **Conditional execution** with Ansible facts & `when:` statements.  
✅ **Idempotency** ensures safe re-execution without duplication.

---

## 📜 License
This project is licensed under the **MIT License**.

---

## 🤝 Contributing
Feel free to **fork** this repository, submit **issues**, or open **pull requests** to improve the project!

---

## 💡 Learn More
- [Ansible Documentation](https://docs.ansible.com/)
- [AWS Boto3 Documentation](https://boto3.amazonaws.com/v1/documentation/api/latest/index.html)
- [Ansible AWS Collection](https://docs.ansible.com/ansible/latest/collections/amazon/aws/index.html)

---

🚀 **Happy Automating!** 🎯

