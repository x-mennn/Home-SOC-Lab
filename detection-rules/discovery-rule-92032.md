# Rule 92032 - ipconfig Execution

## Rule Information

| Field | Value |
|--------|-------|
| Rule ID | 92032 |
| Rule Type | Built-in Wazuh Rule |
| Severity | Medium |
| Platform | Windows |
| Data Source | Sysmon Event ID 1 (Process Creation) |

---

## Detection Summary

This rule detects execution of the `ipconfig` command, which displays network configuration details of the Windows endpoint.

---

## Trigger Logic

The rule is triggered when Sysmon records the execution of the `ipconfig.exe` process and forwards the event to the Wazuh Manager.

---

## MITRE ATT&CK Mapping

| Technique | Name |
|-----------|------|
| T1016 | System Network Configuration Discovery |

---

## Investigation Guidance

A SOC analyst should verify:

- Parent process
- User account
- Command line
- Network configuration queried
- Execution time
- Related discovery activity

Determine whether the command was executed during normal troubleshooting or reconnaissance.

---

## Expected False Positives

- System administrators
- Help desk staff
- Network troubleshooting
- IT automation scripts

---

## Why This Detection Matters

Attackers often enumerate network configuration to identify IP addresses, gateways, DNS servers, and other information useful for lateral movement.