# Rule 92205 - PowerShell Execution

## Rule Information

| Field | Value |
|--------|-------|
| Rule ID | 92205 |
| Rule Type | Built-in Wazuh Rule |
| Severity | High |
| Platform | Windows |
| Data Source | Sysmon Event ID 1 (Process Creation) |

---

## Detection Summary

This rule detects the execution of PowerShell on a monitored Windows endpoint. PowerShell is a legitimate administrative tool but is frequently abused by attackers for post-exploitation activities.

---

## Trigger Logic

The rule is triggered when Sysmon records a PowerShell process creation event and forwards the event to the Wazuh Manager for analysis.

---

## MITRE ATT&CK Mapping

| Technique | Name |
|-----------|------|
| T1059.001 | PowerShell |

---

## Investigation Guidance

A SOC analyst should verify:

- Parent process
- Command line arguments
- User account
- Execution time
- Hostname
- Frequency of execution

Determine whether the execution is part of normal administration or indicates suspicious activity.

---

## Expected False Positives

- System administrators
- IT automation scripts
- Legitimate maintenance tasks

---

## Why This Detection Matters

PowerShell is one of the most commonly abused Windows utilities because it enables attackers to execute commands, download payloads, perform reconnaissance, and move laterally without requiring additional tools.