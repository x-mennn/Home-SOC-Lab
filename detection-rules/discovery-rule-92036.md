# Rule 92036 - net user Execution

## Rule Information

| Field | Value |
|--------|-------|
| Rule ID | 92036 |
| Rule Type | Built-in Wazuh Rule |
| Severity | Medium |
| Platform | Windows |
| Data Source | Sysmon Event ID 1 (Process Creation) |

---

## Detection Summary

This rule detects execution of the `net user` command, which is commonly used to enumerate local user accounts.

---

## Trigger Logic

The rule is triggered when Sysmon records execution of the `net.exe` process with the `user` argument and forwards the event to the Wazuh Manager.

---

## MITRE ATT&CK Mapping

| Technique | Name |
|-----------|------|
| T1087.001 | Local Account Discovery |

---

## Investigation Guidance

A SOC analyst should verify:

- Parent process
- User account
- Command line arguments
- Execution time
- Whether additional discovery commands were executed

Determine whether the activity is administrative or part of attacker reconnaissance.

---

## Expected False Positives

- System administrators
- IT support
- User account audits
- Administrative scripts

---

## Why This Detection Matters

Enumerating local accounts helps attackers identify privileged users and potential targets for credential theft or privilege escalation.