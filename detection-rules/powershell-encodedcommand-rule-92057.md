# Rule 92057 - PowerShell EncodedCommand

## Rule Information

| Field | Value |
|--------|-------|
| Rule ID | 92057 |
| Rule Type | Built-in Wazuh Rule |
| Severity | High |
| Platform | Windows |
| Data Source | Sysmon Event ID 1 (Process Creation) |

---

## Detection Summary

This rule detects PowerShell executions that use the `-EncodedCommand` parameter to execute Base64-encoded commands.

---

## Trigger Logic

The rule is triggered when Sysmon records a PowerShell process containing the `-EncodedCommand` argument in the command line.

---

## MITRE ATT&CK Mapping

| Technique | Name |
|-----------|------|
| T1059.001 | PowerShell |

---

## Investigation Guidance

A SOC analyst should verify:

- Full command line
- Parent process
- User account
- Decode the Base64 command
- Execution time
- Related alerts

Determine whether the encoded command performs legitimate administration or malicious actions.

---

## Expected False Positives

- Administrative automation
- Software deployment scripts
- IT management tools

---

## Why This Detection Matters

Attackers frequently use encoded PowerShell commands to hide malicious activity and bypass simple command-line monitoring.