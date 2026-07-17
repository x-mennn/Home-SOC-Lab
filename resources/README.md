# 📚 Learning Resources

## Overview

This directory contains the official documentation, frameworks, and learning resources referenced while building the Home Security Operations Center (SOC) Lab.

These resources were used to understand SIEM deployment, endpoint monitoring, Windows telemetry, detection engineering, threat hunting, and incident response.

Wherever possible, official vendor documentation and industry-standard frameworks were used to ensure the lab followed recommended practices.

---

# 🛡️ Wazuh

Wazuh is the primary Security Information and Event Management (SIEM) platform used throughout this project.

It provides:

- Endpoint monitoring
- Log collection
- Security event analysis
- Detection rules
- Alert generation
- Threat investigation

## Official Resources

- Wazuh Documentation  
  https://documentation.wazuh.com/

- Wazuh Installation Guide  
  https://documentation.wazuh.com/current/installation-guide/

- Wazuh Ruleset Documentation  
  https://documentation.wazuh.com/current/user-manual/ruleset/

---

# 🖥️ Sysmon

Sysmon (System Monitor) is a Microsoft Sysinternals utility that provides detailed endpoint telemetry for security monitoring.

Within this lab, Sysmon was configured to capture:

- Process Creation
- Command-Line Logging
- Network Connections
- Registry Events
- File Creation
- Image Loading

## Official Resources

- Microsoft Sysmon Documentation  
  https://learn.microsoft.com/sysinternals/downloads/sysmon

- Sysmon Modular Configuration  
  https://github.com/olafhartong/sysmon-modular

---

# 🔍 Sigma Rules

Sigma is an open detection rule format that enables security detections to be shared across different SIEM platforms.

Several detections implemented in this project were also converted into Sigma rules to demonstrate vendor-neutral detection engineering.

## Official Resources

- Sigma Official Website  
  https://sigmahq.io/

- Sigma GitHub Repository  
  https://github.com/SigmaHQ/sigma

---

# 🎯 MITRE ATT&CK

MITRE ATT&CK is an industry-standard knowledge base that categorizes adversary tactics and techniques.

Each implemented detection in this project was mapped to the corresponding ATT&CK technique to improve investigation context and detection coverage.

## Official Resource

- MITRE ATT&CK Framework  
  https://attack.mitre.org/

---

# 🪟 Microsoft Learn

Microsoft Learn was referenced to understand Windows internals, Event Logs, PowerShell, and security-related technologies used throughout the project.

## Official Resources

- Microsoft Learn  
  https://learn.microsoft.com/

- PowerShell Documentation  
  https://learn.microsoft.com/powershell/

- Windows Security Documentation  
  https://learn.microsoft.com/windows/security/

---

# 🧰 Microsoft Sysinternals

Sysinternals provides advanced Windows utilities commonly used by defenders, system administrators, and incident responders.

This project primarily used Sysmon from the Sysinternals Suite.

## Official Resource

- Sysinternals Suite  
  https://learn.microsoft.com/sysinternals/

---

# 🎓 TryHackMe

Practical cybersecurity concepts learned through TryHackMe helped reinforce the knowledge required to design and validate this Home SOC Lab.

Relevant learning topics included:

- SOC Operations
- Windows Fundamentals
- Networking
- Threat Detection
- Defensive Security
- Active Directory

## Official Resource

- https://tryhackme.com/

---

# 📖 Additional References

Additional learning material that supported this project:

- MITRE ATT&CK Navigator
- Sigma Rule Repository
- Wazuh Documentation
- Microsoft Learn
- Sysmon Documentation

---

# 🎯 Purpose

The purpose of this directory is to provide reliable references that support the technologies, frameworks, and methodologies used throughout this Home SOC Lab.

Using official documentation alongside industry-recognized frameworks helped ensure that the deployment, detections, and investigation workflows align with real-world security operations and best practices.