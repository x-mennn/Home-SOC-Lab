# Rule 92004 - whoami Execution

## Rule Information

| Field | Value |
|--------|-------|
| Rule ID | 92004 |
| Rule Type | Built-in Wazuh Rule |
| Severity | Medium |
| Platform | Windows |
| Data Source | Sysmon Event ID 1 (Process Creation) |

---

## Detection Summary

This rule detects the execution of the `whoami` command on a monitored Windows endpoint. The command is commonly used to identify the current user and security context.

---

## Trigger Logic

The rule is triggered when Sysmon logs the execution of the `whoami.exe` process and forwards the event to the Wazuh Manager.

---

## MITRE ATT&CK Mapping

| Technique | Name |
|-----------|------|
| T1033 | System Owner/User Discovery |

---

## Investigation Guidance

A SOC analyst should verify:

- Parent process
- Command line arguments
- User account
- Hostname
- Execution time
- Whether the command was executed interactively or by a script

Determine whether the activity is part of normal administration or reconnaissance.

---

## Expected False Positives

- System administrators
- IT support personnel
- Troubleshooting scripts
- Administrative automation

---

## Why This Detection Matters

Attackers frequently execute the `whoami` command immediately after gaining access to determine the privileges of the compromised account before performing additional actions.