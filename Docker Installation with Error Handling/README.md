# 🚀 Ansible Playbook: Docker Installation with Error Handling

## 📌 Overview

This Ansible Playbook automates the setup of OpenSSH, OpenSSL, and Docker on target hosts. It ensures packages are updated, verifies Docker installation, and includes robust error handling and logging mechanisms.

## ✨ Features

- ✅ Runs sudo apt update before installing any packages.
- ✅ Updates OpenSSH and OpenSSL only if they are installed.
- 🔍 Verifies if Docker is already installed.
- 📦 Installs Docker if not present.
- ⚠️ Implements error handling to prevent execution failures.
- 📜 Logs execution details for debugging.

## 🔧 Prerequisites

Before running the playbook, ensure the following:

- Ansible is installed on the control node.
- Target nodes have SSH access configured (passwordless authentication preferred).
- Managed nodes run Ubuntu.

## 🖥️ Setting Up EC2 Instances

To connect to EC2 instances using SSH with a public key, use:

```sh
ssh-copy-id -f "-o IdentityFile=<PATH_TO_PEM_FILE>" ubuntu@<INSTANCE_PUBLIC_IP>
```

### 📝 Explanation:

- **`ssh-copy-id`**: Copies your public key to the remote machine.
- **`-f`**: Forces copying of keys, useful if keys already exist.
- **`"-o IdentityFile="`**: Specifies the private key to use for authentication.
- **`ubuntu@<INSTANCE_PUBLIC_IP>`**: Defines the remote server's username (`ubuntu`) and public IP address.

## ⚙️ Error Handling

- **`ignore_errors: yes`** ensures package update failures do not halt execution.
- **`register`** captures command outputs for conditional logic.
- **`when: condition`** ensures tasks run only when necessary.

## 📖 Usage

1. Clone this repository:
   ```sh
   git clone <repo-url>
   cd <repo-folder>
   ```
2. Configure your inventory file (`inventory.ini`).
3. Run the playbook:
   ```sh
   ansible-playbook -i inventory.ini main.yaml
   ```
4. Verify Docker installation:
   ```sh
   docker --version
   ```

## 🤝 Contributing

Contributions are welcome! Feel free to open issues or submit pull requests.

## 📜 License

This project is open-source and available under the **MIT License**.

---

💡 *Feel free to star this repo if you find it useful!* ⭐

