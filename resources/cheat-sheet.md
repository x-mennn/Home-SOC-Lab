# 📋 SOC Quick Reference Cheat Sheet

## Overview

This cheat sheet provides a quick reference to commonly used Windows Event IDs, Sysmon events, MITRE ATT&CK tactics, Wazuh file locations, and Sigma rule structure used throughout this Home SOC Lab.

It is intended as a rapid revision guide for SOC analysts and security practitioners.

---

# 🖥️ Important Sysmon Event IDs

| Event ID | Description |
|----------|-------------|
| 1 | Process Creation |
| 3 | Network Connection |
| 7 | Image Loaded |
| 8 | CreateRemoteThread |
| 10 | Process Access |
| 11 | File Create |
| 12 | Registry Object Create/Delete |
| 13 | Registry Value Set |
| 22 | DNS Query |

---

# 📑 Common Windows Event IDs

| Event ID | Description |
|----------|-------------|
| 4624 | Successful Logon |
| 4625 | Failed Logon |
| 4634 | Logoff |
| 4688 | Process Creation |
| 4697 | Service Installation |
| 4720 | User Account Created |
| 4726 | User Account Deleted |
| 4732 | User Added to Security Group |

---

# 🎯 MITRE ATT&CK Tactics

| ID | Tactic |
|----|--------|
| TA0001 | Initial Access |
| TA0002 | Execution |
| TA0003 | Persistence |
| TA0004 | Privilege Escalation |
| TA0005 | Defense Evasion |
| TA0006 | Credential Access |
| TA0007 | Discovery |
| TA0008 | Lateral Movement |
| TA0009 | Collection |
| TA0011 | Command and Control |

---

# 🛡️ Wazuh Important Paths

| File | Purpose |
|------|---------|
| `/var/ossec/etc/ossec.conf` | Main Configuration |
| `/var/ossec/etc/rules/local_rules.xml` | Custom Detection Rules |
| `/var/ossec/logs/alerts/alerts.json` | JSON Alerts |
| `/var/ossec/logs/ossec.log` | Wazuh Logs |

---

# 📜 Sigma Rule Structure

Typical Sigma rule sections:

- title
- id
- status
- description
- author
- logsource
- detection
- condition
- level
- tags

---

# ⚡ Detection Rules Implemented

This Home SOC Lab includes detections for:

- PowerShell Execution
- PowerShell EncodedCommand
- PowerShell Suspicious Flags
- Discovery Commands
- Certutil
- MSHTA
- Regsvr32
- Custom Notepad Execution

---

# 🔎 Useful Investigation Questions

When investigating an alert:

- What process started the activity?
- Which user executed it?
- What command line was used?
- Which MITRE ATT&CK technique matches?
- Is the activity expected?
- What is the potential impact?
- What evidence should be collected?
- What response action should be taken?

---

# 📚 References

- Wazuh Documentation
- Microsoft Learn
- Sysmon Documentation
- MITRE ATT&CK
- SigmaHQ