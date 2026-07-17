# Rule 100102 - MSHTA Execution

## Rule Information

| Field | Value |
|--------|-------|
| Rule ID | 100102 |
| Rule Type | Custom Wazuh Rule |
| Severity | High |
| Platform | Windows |
| Data Source | Sysmon Event ID 1 (Process Creation) |

---

## Detection Summary

This custom rule detects the execution of `mshta.exe`, a Windows utility that attackers frequently abuse to execute malicious HTA files and scripts.

---

## Trigger Logic

The rule matches Sysmon process creation events where the executed process is `mshta.exe`.

---

## MITRE ATT&CK Mapping

| Technique | Name |
|-----------|------|
| T1218.005 | Mshta |

---

## Investigation Guidance

A SOC analyst should verify:

- Parent process
- Command line
- HTA file location
- User account
- Related network activity

Determine whether the execution was legitimate or malicious.

---

## Expected False Positives

- Legacy enterprise applications
- Administrative scripts using HTA files

---

## Why This Detection Matters

`mshta.exe` is a well-known LOLBin that allows attackers to execute malicious scripts while blending in with legitimate Windows binaries.