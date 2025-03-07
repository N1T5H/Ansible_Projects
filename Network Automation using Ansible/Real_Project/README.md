# Ansible Network Automation Project

## 📌 Overview
This project automates network device configurations using Ansible. It performs essential network automation tasks, such as **backing up configurations, deploying changes, validating updates, and restarting network services** when necessary.

## 🚀 Features
- **Backup Network Configurations**: Saves current configurations before making changes.
- **Deploy New Configurations**: Uses Jinja2 templates to update network settings dynamically.
- **Validate Configurations**: Ensures changes are applied correctly.
- **Restart Network Services**: If required, restarts networking to apply updates.

## 🛠️ Technologies Used
- **Ansible**: Automates network configuration management.
- **SSH**: Securely connects to network devices.
- **Jinja2 Templates**: Creates reusable network configuration files.
- **Linux/Unix Commands**: Used for backup and validation.

## 📂 Project Structure
```
├── inventory.ini          # List of network devices
├── main.yml # Ansible playbook
├── templates/
│   ├── network_config.j2  # Jinja2 template for configurations
├── vars.yml               # Variables for network configurations
└── README.md              # Project documentation
```

## 🔧 Setup Instructions
### 1️⃣ Install Ansible
For Ubuntu/Debian:
```bash
sudo apt update && sudo apt install ansible -y
```
For macOS:
```bash
brew install ansible
```

### 2️⃣ Configure Inventory
Edit `inventory.ini` to define your network devices:
```ini
[routers]
router1 ansible_host=192.168.1.1 ansible_user=admin ansible_password=yourpassword

[switches]
switch1 ansible_host=192.168.1.2 ansible_user=admin ansible_password=yourpassword
```

### 3️⃣ Set Up SSH Access
```bash
ssh-keygen -t rsa
ssh-copy-id admin@192.168.1.1
ssh-copy-id admin@192.168.1.2
```

### 4️⃣ Run the Ansible Playbook
```bash
ansible-playbook -i inventory.ini network_automation.yml
```

### 5️⃣ Verify Changes
```bash
ansible all -m command -a "cat /etc/network/interfaces" -i inventory.ini
```

## 💡 Future Enhancements
- **Integrate with Ansible Tower/AWX** for a web dashboard.
- **Monitor configuration changes** using Prometheus/Grafana.
- **Automate periodic backups** with cron jobs or Jenkins.

## 🤝 Contributing
Feel free to fork this repository, submit issues, or suggest improvements!

## 📜 License
This project is open-source and available under the MIT License.

