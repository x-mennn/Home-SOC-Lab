# Installation Guide

## Overview

This section documents the complete installation and configuration process for the Home SOC Lab environment. The objective is to build an enterprise-inspired Security Operations Center (SOC) lab using industry-standard tools, secure configurations, and reproducible deployment procedures.

Every installation phase is validated before moving to the next component to ensure the environment remains stable, reliable, and easy to troubleshoot.

---

# Installation Roadmap

The Home SOC Lab is being deployed in the following order:

1. Hypervisor Installation ✅
2. Virtual Network Configuration ✅
3. Ubuntu Server Deployment ✅
4. Windows Endpoint Deployment ⏳
5. Wazuh Platform Installation ⏳
6. Sysmon Deployment ⏳
7. Wazuh Agent Enrollment ⏳
8. Dashboard Configuration ⏳
9. Detection Rule Development ⏳
10. Attack Simulation ⏳
11. Detection Validation ⏳
12. Incident Reporting ⏳

---

# Installation Philosophy

Every component in this project follows these principles:

- Official installation sources
- Step-by-step documentation
- Verification after installation
- Reproducible configuration
- Enterprise best practices

---

# Current Status

| Component | Status |
|-----------|--------|
| VMware Workstation Pro | ✅ Completed |
| Virtual Networking | ✅ Completed |
| Ubuntu Server | ✅ Completed |
| Windows Endpoint | ⏳ Pending |
| Wazuh Platform | ⏳ Pending |
| Sysmon | ⏳ Pending |
| Wazuh Agent | ⏳ Pending |
| Dashboards | ⏳ Pending |
| Detection Rules | ⏳ Pending |
| Attack Simulation | ⏳ Pending |
| Incident Reports | ⏳ Pending |

---

# VMware Workstation Pro Installation

VMware Workstation Pro was selected as the virtualization platform because it provides enterprise-grade virtualization, reliable networking, snapshot support, and excellent compatibility with cybersecurity labs.

## Installation Verification

### VMware Workstation Installed

![VMware Workstation Installed](../screenshots/installation/vmware-workstation-installed.png)

---

### Virtual Network Editor

![Virtual Network Editor](../screenshots/installation/vmware-virtual-network-editor.png)

---

### VMware Preferences

![VMware Preferences](../screenshots/installation/vmware-preferences.png)

---

# Ubuntu Server Deployment

Ubuntu Server 26.04 LTS was deployed as the primary Wazuh Manager server for the Home SOC Lab.

The server is administered remotely using Visual Studio Code Remote SSH, following enterprise administration practices.

---

## Server Configuration

| Setting | Value |
|----------|-------|
| Operating System | Ubuntu Server 26.04 LTS |
| Hostname | wazuh-manager |
| Username | socadmin |
| vCPU | 4 |
| Memory | 8 GB |
| Disk | 100 GB (Thin Provision) |
| Firmware | UEFI |
| Network | NAT |
| Static IP | 192.168.112.10/24 |

---

## Configuration Tasks Completed

- Ubuntu Server installation
- System update
- System upgrade
- Static IP configuration
- OpenSSH installation
- VS Code Remote SSH configuration
- Root filesystem expansion
- Open VM Tools verification

---

## Installation Verification

### System Identity & Network

Hostname and static IP configuration were verified after deployment.

![System Identity and Network](../screenshots/ubuntu/system-identity-network.png)

---

### Disk Verification

The root filesystem was successfully expanded to utilize the complete virtual disk.

![Disk Verification](../screenshots/ubuntu/disk-verification.png)

---

### Open VM Tools

VMware guest integration services were verified successfully.

![Open VM Tools](../screenshots/ubuntu/open-vm-tools.png)

---

### Remote Administration

Ubuntu Server is managed remotely through Visual Studio Code using the Remote SSH extension.

![Remote SSH](../screenshots/ubuntu/remote-ssh-vscode.png)

---

# Result

The infrastructure foundation of the Home SOC Lab has been completed successfully.

Completed milestones include:

- VMware Workstation Pro
- Virtual Network Configuration
- Ubuntu Server Deployment
- Remote Administration
- Storage Expansion
- Open VM Tools Verification

The environment is now ready for Wazuh Platform deployment.

---

# Notes

This document is continuously updated as each installation milestone is completed. Every procedure is validated before documentation to ensure accuracy, reproducibility, and enterprise-grade quality.