# 🐉 Kali Linux Installation

## Objective

Deploy a Kali Linux virtual machine to simulate attacker activity against the monitored Windows endpoint.

The Kali machine is used to perform controlled attack simulations that validate Wazuh detection rules and support threat hunting exercises.

---

# Virtual Machine Configuration

| Setting | Value |
|----------|-------|
| Operating System | Kali Linux |
| Hostname | kali |
| vCPU | 2 |
| Memory | 4 GB |
| Disk | 60 GB (Thin Provision) |
| Firmware | UEFI |
| Network | NAT |
| Static IP | 192.168.112.30/24 |

---

# Configuration Tasks

The following tasks were completed after installation:

- Updated system packages
- Configured a static IP address
- Verified network connectivity
- Confirmed communication with the Windows endpoint
- Validated connectivity with the Wazuh Server

---

# Primary Usage

The Kali Linux virtual machine was used to perform:

- Discovery commands
- PowerShell testing
- Certutil testing
- MSHTA execution
- Regsvr32 execution
- Detection validation

---

# Installation Verification

Deployment was verified by confirming:

- Successful boot
- Static IP configuration
- Network connectivity
- Communication with all lab systems

---

# Outcome

The Kali Linux virtual machine was successfully deployed and used as the attack simulation system throughout the Home SOC Lab.