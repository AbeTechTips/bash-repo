# Abe's Bash Repo

![AbeTech Repository](AbeTech%20Repository.png)

# 🐚 Bash Automation Toolkit

A collection of Bash scripts designed to automate system configuration, security enforcement, and compliance checks across macOS and Linux environments.

This repository reflects hands-on experience building automation workflows similar to those used in modern IT and DevOps environments.

---

## 🚀 Overview

This project focuses on using Bash to:

* Automate endpoint configuration
* Enforce security standards
* Validate system compliance
* Reduce manual operational overhead

The scripts are designed with both **homelab experimentation** and **enterprise-style workflows** in mind.

---

## 🧠 Use Cases

* macOS device configuration and hardening
* Linux/Ubuntu server automation
* SSH configuration enforcement
* Compliance validation (OS version, security settings)
* Automated software installation and updates

---

## 🛠️ Script Categories

### 🍎 macOS Management

* FileVault enforcement and status checks
* System preference configuration (Dock, Finder, sleep settings)
* OS update automation with user notifications
* Standardized software installation

### 🐧 Linux / Ubuntu Automation

* System updates and package management
* Service configuration and validation
* OS version compliance checks

### 🔐 Security & SSH

* SSH config validation and remediation
* Key-based authentication setup
* Hardening configurations for secure remote access

### 📋 Compliance Checks

* OS version enforcement
* Security configuration audits
* Automated reporting for non-compliant systems

---

## ⚙️ Getting Started

### Prerequisites

* macOS or Linux environment
* Bash (v4+ recommended)
* Root or sudo access

### Run a Script

```bash
chmod +x script_name.sh
./script_name.sh
```

---

## 🧩 Example Workflow

```bash
# Check SSH configuration
./check_ssh_config.sh

# Enforce compliance settings
./enforce_security_baseline.sh

# Run system updates
./update_system.sh
```

---

## 🧱 Project Structure

```
bash-repo/
├── macos/
├── linux/
├── security/
├── compliance/
└── utils/
```

---

## 🎯 Goals of This Repository

* Build real-world Bash scripting skills
* Simulate enterprise IT automation scenarios
* Create reusable automation tools for system management
* Showcase scripting depth for IT Systems / DevOps roles

---

## 💡 Key Takeaways

* Emphasis on **automation-first mindset**
* Scripts designed to be **modular and reusable**
* Focus on **security, compliance, and scalability**
* Bridges gap between IT support and systems engineering

---

## 🔮 Future Improvements

* Integration with automation platforms (n8n, Slack alerts)
* Logging and centralized reporting
* Parameterized scripts for multi-environment use
* Error handling and retry logic enhancements

---

## 🤝 Contributing

This is a personal learning and portfolio project, but contributions and suggestions are welcome.

---
