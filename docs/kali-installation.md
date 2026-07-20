# Kali Linux Deployment

## Overview

This document describes the deployment and configuration of the Kali Linux attacker machine used in the Home SOC Lab.

---

## VM Information

| Item             | Value                  |
| ---------------- | ---------------------- |
| Operating System | Kali GNU/Linux Rolling |
| Hostname         | attacker-kali          |
| Role             | Attacker Machine       |
| IP Address       | 192.168.112.30         |
| Gateway          | 192.168.112.2          |
| Network          | VMware NAT (VMnet8)    |

---

## Installation

* Imported the official Kali Linux VMware virtual machine.
* Configured virtual hardware.
* Connected the VM to VMware VMnet8 (NAT).
* Assigned a static IP address.
* Updated the operating system.
* Installed base utilities.
* Enabled the OpenSSH server.

---

## Kali Linux Deployment

![Kali Linux Installation](../screenshots/kali/kali-installation.png)


---

## Installed Utilities

* curl
* wget
* git
* vim
* net-tools
* python3-pip
* jq
* OpenSSH Server

---

## Connectivity Verification

Successful communication was verified with:

* Wazuh Manager (192.168.112.10)
* Windows Endpoint (192.168.112.20)

---

## SSH

SSH service was enabled and configured to start automatically during boot.

---

## Screenshots

The deployment screenshots are stored in:

screenshots/kali/
