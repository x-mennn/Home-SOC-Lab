# 🛡️ Home SOC Lab

## 📌 Overview

This repository documents the design and implementation of a complete Home Security Operations Center (SOC) Lab built using VMware Workstation Pro, Wazuh, Sysmon, Windows 10, Ubuntu Server, and Kali Linux.

The lab simulates real-world attack scenarios, collects endpoint telemetry, detects malicious activity, performs threat hunting, maps detections to the MITRE ATT&CK framework, and documents investigations following SOC analyst workflows.

---

## 🎯 Objectives

- Build a fully functional Home SOC Lab
- Deploy and configure Wazuh SIEM
- Collect Windows endpoint telemetry using Sysmon
- Simulate attacks from Kali Linux
- Validate built-in and custom Wazuh detections
- Perform threat hunting and alert investigation
- Map detections to the MITRE ATT&CK framework
- Document investigations and detection engineering
- Build an interview-ready cybersecurity portfolio

---

## 🛠️ Technologies

| Category | Technology |
|----------|------------|
| Hypervisor | VMware Workstation Pro |
| SIEM | Wazuh |
| Endpoint Monitoring | Sysmon |
| Operating Systems | Ubuntu Server, Windows 10, Kali Linux |
| Detection Engineering | Wazuh Rules, Sysmon |
| Framework | MITRE ATT&CK |
| Version Control | Git & GitHub |

---

## 🔍 Detection Coverage

Implemented detections include:

- PowerShell Execution
- Windows Discovery Commands
- Certutil Execution
- PowerShell EncodedCommand
- Suspicious PowerShell Flags
- Custom Notepad Detection
- Custom MSHTA Detection
- Custom Regsvr32 Detection

---

## 📂 Repository Structure

```text
architecture/
attack-simulations/
dashboards/
detection-rules/
docs/
incident-reports/
installation/
mitre-attack/
resources/
screenshots/
scripts/
sigma-rules/
README.md
```

---

## 🚧 Project Status

| Component | Status |
|----------|--------|
| Infrastructure | ✅ Complete |
| Detection Engineering | ✅ Complete |
| Documentation | 🚧 In Progress |
| Incident Reports | 🚧 In Progress |
| MITRE Mapping | 🚧 In Progress |
| Sigma Rules | 🚧 In Progress |
| Final Repository Polish | 🚧 In Progress |

---

## 📖 Learning Outcomes

Through this project I gained hands-on experience with:

- SIEM deployment and administration
- Windows endpoint monitoring
- Sysmon log analysis
- Threat hunting
- Detection engineering
- Custom Wazuh rule development
- MITRE ATT&CK mapping
- SOC investigation workflow
- Security documentation and reporting

---

## 📜 License

This project is intended for educational purposes and cybersecurity portfolio development.