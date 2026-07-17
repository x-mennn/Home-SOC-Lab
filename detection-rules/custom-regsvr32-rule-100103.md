# Rule 100103 - Regsvr32 Execution

## Rule Information

| Field | Value |
|--------|-------|
| Rule ID | 100103 |
| Rule Type | Custom Wazuh Rule |
| Severity | High |
| Platform | Windows |
| Data Source | Sysmon Event ID 1 (Process Creation) |

---

## Detection Summary

This custom rule detects execution of `regsvr32.exe`, a legitimate Windows utility commonly abused to execute malicious scripts or register rogue DLLs.

---

## Trigger Logic

The rule matches Sysmon process creation events where the executed process is `regsvr32.exe`.

---

## MITRE ATT&CK Mapping

| Technique | Name |
|-----------|------|
| T1218.010 | Regsvr32 |

---

## Investigation Guidance

A SOC analyst should verify:

- Parent process
- Command line
- DLL or script path
- User account
- Related process activity

Determine whether the execution is legitimate or part of a defense evasion technique.

---

## Expected False Positives

- Software installation
- DLL registration during application updates
- Administrative maintenance

---

## Why This Detection Matters

`regsvr32.exe` is a commonly abused LOLBin that attackers use to execute malicious code while bypassing application control mechanisms.