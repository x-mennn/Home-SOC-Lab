# Windows 10 Endpoint Deployment

## Overview

This document describes the deployment of the Windows 10 endpoint used in the Home SOC Lab.

---

## System Information

| Item | Value |
|------|-------|
| Hostname | soc-win10 |
| Operating System | Windows 10 Pro |
| CPU | 2 vCPU |
| RAM | 4 GB |
| Disk | 80 GB Thin Provision |
| Firmware | UEFI |
| Network | VMware NAT (VMnet8) |
| IP Address | 192.168.112.20 |
| Gateway | 192.168.112.2 |

---

## VMware Tools

VMware Tools installed successfully.

Benefits:

- Improved graphics performance
- Better mouse integration
- Time synchronization
- Optimized drivers

---

## Connectivity Verification

Windows → Ubuntu

- Successful

Ubuntu → Windows

- Successful

---

## Screenshots

- windows-install-complete.png
- vmware-tools-installed.png
- hostname.png
- ipconfig-static-ip.png
- ping-ubuntu.png
- ping-from-ubuntu.png