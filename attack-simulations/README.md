# Attack Simulations

## Overview

This directory contains the attack simulations executed in the Home SOC Lab to validate detection capabilities using Sysmon and Wazuh. Each simulation generated endpoint telemetry that was collected by Sysmon, processed by Wazuh, and analyzed through the Wazuh Dashboard.

The simulations represent commonly abused attacker techniques performed in a controlled lab environment for detection engineering, threat hunting, and security monitoring practice.

Each simulation documents the executed command, its objective, the expected detection, and the observed outcome during validation.

---

## Purpose

The attack simulations were performed to:

- Validate Sysmon event collection.
- Verify built-in and custom Wazuh detection rules.
- Generate security telemetry for investigation.
- Validate detection coverage for common attacker techniques.
- Map detections to the MITRE ATT&CK framework.
- Improve understanding of attacker behavior and defensive monitoring.

---

## Lab Environment

| Component | Description |
|-----------|-------------|
| Hypervisor | VMware Workstation Pro |
| SIEM | Wazuh |
| Manager | Ubuntu Server |
| Endpoint | Windows 10 |
| Attacker | Kali Linux |
| Endpoint Monitoring | Sysmon |
| Agent | Wazuh Agent |

---

## Attack Simulation Summary

| Simulation | MITRE ATT&CK | Detection |
|------------|--------------|-----------|
| PowerShell Execution | T1059.001 | PowerShell process execution |
| Discovery Commands | T1033, T1082, T1016, T1087 | Windows discovery commands |
| Certutil Encode/Decode | T1218 | Certutil execution |
| PowerShell EncodedCommand | T1059.001 | Encoded PowerShell execution |
| PowerShell Suspicious Flags | T1059.001 | Suspicious PowerShell execution |
| Custom Notepad | T1204 | Custom Wazuh rule validation |
| MSHTA | T1218.005 | Custom MSHTA detection |
| Regsvr32 | T1218.010 | Custom Regsvr32 detection |

---

## Safety Notice

All attack simulations were performed in an isolated virtual lab environment owned and managed by the author. No production systems, third-party infrastructure, or external networks were targeted during testing.

The techniques documented in this repository are intended solely for defensive security research, detection engineering, and educational purposes.

---

## Related Documentation

| Directory | Description |
|-----------|-------------|
| `../docs/` | Detailed detection documentation and validation |
| `../detection-rules/` | Wazuh built-in and custom detection rules |
| `../incident-reports/` | SOC incident reports for simulated attacks |
| `../mitre-attack/` | MITRE ATT&CK mappings and coverage |
| `../sigma-rules/` | Sigma rule equivalents for implemented detections |