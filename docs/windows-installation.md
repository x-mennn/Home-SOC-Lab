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

### Benefits

- Improved graphics performance
- Better mouse integration
- Time synchronization
- Optimized drivers

---

## Verification

![Windows Installation Complete](../screenshots/windows/windows-install-complete.png)

---


### Windows → Ubuntu

- Successful

### Ubuntu → Windows

- Successful

---

# Wazuh Agent Enrollment

## Agent Configuration

| Setting | Value |
|---------|-------|
| Agent Name | soc-win10 |
| Wazuh Manager | 192.168.112.10 |
| Agent Group | default |
| Agent Version | 4.13.1 |
| Status | Active |

---

## Enrollment Verification

The Windows endpoint was successfully enrolled into the Wazuh Manager using the official Wazuh deployment method.

Verification completed:

- Agent successfully connected to the Wazuh Manager.
- Agent status verified as **Active** in the Wazuh Dashboard.
- Windows event logs successfully ingested into Wazuh.
- Threat Hunting dashboard displaying Windows endpoint telemetry.
- Authentication failure event successfully detected and recorded.

---

## Evidence

### Windows Deployment

- windows-install-complete.png
- vmware-tools-installed.png
- hostname.png
- ipconfig-static-ip.png
- ping-ubuntu.png
- ping-from-ubuntu.png

### Wazuh Enrollment

- windows-agent-active.png
- threat-hunting-dashboard.png
- windows-events.png

---

## Outcome

The Windows endpoint is now fully integrated into the Home SOC Lab and continuously monitored by the Wazuh platform. Endpoint telemetry is successfully forwarded to the Wazuh Manager, enabling alert generation, threat hunting, detection engineering, and incident investigation in subsequent project phases.