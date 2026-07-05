# Virtual Machine Specifications

**Project:** Home SOC Lab

**Status:** Completed

**Version:** 1.0

---

# Objective

This document defines the hardware allocation for each virtual machine used in the Home SOC Lab. Proper resource planning ensures that the environment remains stable while efficiently utilizing the host system's hardware.

---

# Host Machine

The Home SOC Lab is deployed on a Windows host system capable of running multiple virtual machines simultaneously.

The host machine provides sufficient CPU, memory, and storage resources for virtualization while maintaining acceptable performance during normal operation.

---

# Virtual Machine Specifications

| Virtual Machine | Operating System | vCPU | RAM | Disk |
|-----------------|------------------|------|-----|------|
| Wazuh Server | Ubuntu Server | 2 | 6 GB | 80 GB |
| Windows Endpoint | Windows 10 | 2 | 4 GB | 60 GB |

---

# Resource Allocation Strategy

The hardware resources have been allocated based on the role of each virtual machine.

## Wazuh Server

The Ubuntu Server hosts:

- Wazuh Manager
- Elastic Stack
- Kibana

Since these services process logs and security events, the server requires higher memory allocation than the Windows endpoint.

---

## Windows Endpoint

The Windows virtual machine represents an enterprise endpoint.

It will later include:

- Sysmon
- Winlogbeat
- Simulated user activity
- Attack simulations

The allocated resources are sufficient for endpoint monitoring and security testing.

---

# Scalability

The selected specifications leave enough available resources on the host system for future expansion.

Future virtual machines may include:

- Kali Linux
- Active Directory Domain Controller
- Additional Windows Endpoints

---

# Result

The selected virtual machine specifications provide a balance between performance, resource utilization, and scalability while supporting future expansion of the Home SOC Lab.