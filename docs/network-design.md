# Network Design

**Project:** Home SOC Lab

**Status:** Completed

**Version:** 1.0

---

# Objective

This document defines the virtual network architecture used in the Home SOC Lab. A well-planned network design ensures reliable communication between virtual machines while maintaining isolation from the physical home network.

The objective is to simulate an enterprise-inspired SOC environment that supports log collection, monitoring, detection engineering, and attack simulations.


---

# Lab Components

The initial version of the Home SOC Lab consists of two virtual machines.

| Virtual Machine | Operating System | Primary Role |
|-----------------|------------------|--------------|
| Wazuh Server | Ubuntu Server | SIEM Platform |
| Windows Endpoint | Windows 10 | Endpoint Monitoring |

Additional systems such as Kali Linux, Active Directory, and extra Windows endpoints will be introduced in later phases of the project.

---

# Network Architecture

The lab uses VMware Workstation Pro as the virtualization platform.

The virtual machines communicate through VMware's NAT network.

This configuration provides:

- Internet access for software installation and updates.
- Isolation from the physical home network.
- Secure communication between virtual machines.
- Reduced risk during attack simulations.

---

# Planned Network Topology

Internet

↓

Home Router

↓

Host Machine (Windows)

↓

VMware NAT Network

↓

Ubuntu Server (Wazuh)

↓

Windows Endpoint

---

![Home SOC Architecture](../screenshots/architecture/home_soc_architecture.png)

---

# Network Design Goals

The network architecture has been designed to achieve the following objectives:

- Stable communication between virtual machines.
- Internet connectivity for package installation.
- Safe isolation from the physical network.
- Enterprise-inspired architecture.
- Easy scalability for future expansion.

---

# Future Expansion

The network will later be expanded to include:

- Kali Linux
- Active Directory Domain Controller
- Additional Windows Endpoints
- Detection Engineering Lab
- Attack Simulation Environment

---

# Result

The network design provides a scalable foundation for the Home SOC Lab and will support future deployment of Wazuh, Elastic Stack, endpoint monitoring, and attack simulations.