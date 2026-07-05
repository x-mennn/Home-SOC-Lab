# IP Addressing Plan

## Overview

This document defines the IP addressing strategy for the Home SOC Lab.

A structured IP addressing plan ensures consistent communication between systems, simplifies troubleshooting, and provides predictable network addressing for infrastructure services.

The lab uses VMware Workstation Pro's default NAT network.

---

# Network Information

| Setting | Value |
|----------|--------|
| Network Type | NAT |
| Subnet | 192.168.112.0/24 |
| Subnet Mask | 255.255.255.0 |
| Default Gateway | 192.168.112.2 |
| DHCP | Enabled |

---

# Static IP Allocation

| Device | Hostname | IP Address |
|----------|----------|-------------|
| Wazuh Server | ubuntu-wazuh | 192.168.112.10 |
| Windows Endpoint | win10-endpoint | 192.168.112.20 |

---

# DHCP Address Pool

The VMware DHCP service is enabled for the NAT network.

DHCP Range:

| Starting Address | Ending Address |
|------------------|----------------|
| 192.168.112.128 | 192.168.112.254 |

Infrastructure systems will use static IP addresses outside the DHCP pool to eliminate address conflicts.

---

# Reserved Address Space

| IP Range | Purpose |
|-----------|----------|
| .1 - .9 | VMware Infrastructure / Reserved |
| .10 - .29 | Servers |
| .30 - .49 | Future Offensive Security Systems |
| .50 - .99 | Future Infrastructure |
| .100 - .127 | Reserved |
| .128 - .254 | VMware DHCP Pool |

---

# Addressing Strategy

The Home SOC Lab follows a hybrid addressing model.

- Infrastructure systems use static IP addresses.
- Client systems may temporarily use DHCP during installation.
- All production services will ultimately use static addressing.
- Static IPs remain outside the VMware DHCP allocation range.

This approach improves stability, simplifies administration, and prevents unexpected IP changes.

---

# Future Expansion

The current addressing plan allows future integration of additional virtual machines without requiring network redesign.

Planned future systems include:

- Kali Linux
- Active Directory Domain Controller
- Additional Windows Endpoints
- Security Monitoring Systems
- Detection Engineering Infrastructure

---

# Verification

The network configuration was verified using VMware Workstation Pro Virtual Network Editor.

Reference screenshots:

- screenshots/networking/vmware-vmnet8-overview.png
- screenshots/networking/vmware-dhcp-settings.png
- screenshots/networking/vmware-nat-settings.png