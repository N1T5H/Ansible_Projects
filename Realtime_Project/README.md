# 🚀 Ansible AWS Automation Project  

## 📌 Overview  
This project demonstrates **AWS automation using Ansible**, covering essential **DevOps** practices such as **EC2 provisioning, passwordless authentication, and automated instance shutdown**. Inspired by an **interview assignment**, it serves as a hands-on **learning project** for mastering **infrastructure automation** with Ansible.  

## 🎯 Project Objectives  

### ✅ **Task 1: Provision EC2 Instances**  
- Use **Ansible loops** to create **three EC2 instances**:  
  - **Two Ubuntu instances**  
  - **One Amazon Linux instance**  
- Configure **connection type as local** to execute tasks on the Ansible control node.  
- Ensure **idempotency**, preventing duplicate instance creation when rerunning the playbook.  

### ✅ **Task 2: Set Up Secure Passwordless Authentication**  
- Enable **passwordless SSH access** from the Ansible control node to the EC2 instances.  
- Use **SSH key-based authentication** (`ssh-copy-id`).  
- Implement **multiple authentication mechanisms**, including:  
  - **Key-based authentication** with SSH keys.  
  - **AWS Systems Manager (SSM) Session Manager** as an alternative to SSH for improved security.  
  - **Bastion Host (Jump Server)** setup for added security in production environments.  
- Ensure **secure storage of private keys** using **Ansible Vault** and restricted permissions.  

### ✅ **Task 3: Automate Shutdown of Ubuntu Instances**  
- Create an **Ansible playbook** to shut down **only Ubuntu instances**, keeping the Amazon Linux instance running.  
- Use **Ansible conditionals (`when:` statements)** to filter instances based on their OS type.  
- Extract **OS family type** using **Ansible facts**.  
- Execute the shutdown command using **Ansible’s built-in command module**.  

---

## 🔧 Prerequisites  
- **AWS Account** with IAM permissions for EC2 and SSM.  
- **Ansible Installed** (`pip install ansible`).  
- **Boto3 Installed** (`pip install boto3`).  
- **AWS CLI Installed** (`pip install awscli`).  
- **AWS Access Credentials** securely stored in **Ansible Vault**.  
- **SSH Key Pair** generated for authentication.  

---

## 🚀 How to Use  

### 1️⃣ **Set Up AWS Credentials**  
- Create an **IAM User** in AWS with EC2 and SSM permissions.  
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



### 3️⃣ **Automate Shutdown of Ubuntu Instances**  
Run the shutdown playbook to stop only Ubuntu instances:  
```sh
ansible-playbook -i inventory.ini playbooks/ec2_stop.yaml --ask-vault-pass
```  

---

## 📌 Key Features  
✅ **Fully automated EC2 provisioning** using Ansible.  
✅ **Multiple authentication mechanisms** for secure access.  
✅ **AWS API interaction** using Boto3 & Ansible AWS collection.  
✅ **Secure credential storage** with **Ansible Vault**.  
✅ **Conditional execution** with **Ansible facts & `when:` statements**.  
✅ **Idempotency** ensures safe re-execution without duplication.  
✅ **Hardened security** using AWS SSM and Bastion Hosts.  

---

## 🔒 Security Best Practices  
🔹 **Use Ansible Vault** to encrypt sensitive credentials.  
🔹 **Restrict SSH Key Access** (`chmod 400 ~/.ssh/aws_key.pem`).  
🔹 **Prefer AWS SSM Session Manager** over direct SSH when possible.  
🔹 **Use a Bastion Host** to avoid exposing instances directly to the public internet.  
🔹 **Limit IAM permissions** to only what’s necessary for EC2 operations.  

---

## 📜 License  
This project is licensed under the **MIT License**.  

---

## 🤝 Contributing  
Feel free to **fork** this repository, submit **issues**, or open **pull requests** to improve the project!  

---



🚀 **Happy Automating!** 🎯  
