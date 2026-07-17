# Rule 92027 - PowerShell Suspicious Flags

## Rule Information

| Field | Value |
|--------|-------|
| Rule ID | 92027 |
| Rule Type | Built-in Wazuh Rule |
| Severity | High |
| Platform | Windows |
| Data Source | Sysmon Event ID 1 (Process Creation) |

---

## Detection Summary

This rule detects PowerShell executions using suspicious command-line flags that are commonly associated with attacker activity.

---

## Trigger Logic

The rule is triggered when Sysmon records PowerShell being executed with suspicious parameters such as `-ExecutionPolicy Bypass`, `-NoProfile`, or similar flags.

---

## MITRE ATT&CK Mapping

| Technique | Name |
|-----------|------|
| T1059.001 | PowerShell |

---

## Investigation Guidance

A SOC analyst should verify:

- Parent process
- Full command line
- User account
- Hostname
- Execution time
- Whether multiple suspicious flags were used

Determine whether the execution bypassed normal PowerShell security controls.

---

## Expected False Positives

- IT automation
- Administrative scripts
- Software deployment tools

---

## Why This Detection Matters

PowerShell security bypass techniques are widely used during post-exploitation to execute malicious commands while reducing visibility.