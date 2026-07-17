# Rule 92031 - hostname Execution

## Rule Information

| Field | Value |
|--------|-------|
| Rule ID | 92031 |
| Rule Type | Built-in Wazuh Rule |
| Severity | Medium |
| Platform | Windows |
| Data Source | Sysmon Event ID 1 (Process Creation) |

---

## Detection Summary

This rule detects the execution of the `hostname` command on a monitored Windows endpoint. The command is commonly used to identify the system name.

---

## Trigger Logic

The rule is triggered when Sysmon records the execution of the `hostname.exe` process and forwards the event to the Wazuh Manager.

---

## MITRE ATT&CK Mapping

| Technique | Name |
|-----------|------|
| T1082 | System Information Discovery |

---

## Investigation Guidance

A SOC analyst should verify:

- Parent process
- User account
- Command line
- Hostname
- Execution time
- Any related reconnaissance activity

Determine whether the execution is legitimate or part of attacker enumeration.

---

## Expected False Positives

- System administrators
- Inventory scripts
- Monitoring software
- IT automation

---

## Why This Detection Matters

Attackers often identify the hostname of a compromised system to understand its role in the environment and plan further actions such as lateral movement.