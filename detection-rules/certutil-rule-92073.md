# Rule 92073 - Certutil Encode/Decode

## Rule Information

| Field | Value |
|--------|-------|
| Rule ID | 92073 |
| Rule Type | Built-in Wazuh Rule |
| Severity | High |
| Platform | Windows |
| Data Source | Sysmon Event ID 1 (Process Creation) |

---

## Detection Summary

This rule detects the execution of the Windows `certutil` utility with encoding or decoding functionality. Although `certutil` is a legitimate certificate management tool, it is frequently abused by attackers to encode, decode, or transfer payloads.

---

## Trigger Logic

The rule is triggered when Sysmon records the execution of `certutil.exe` with suspicious command-line arguments related to encoding or decoding operations.

---

## MITRE ATT&CK Mapping

| Technique | Name |
|-----------|------|
| T1140 | Deobfuscate/Decode Files or Information |

---

## Investigation Guidance

A SOC analyst should verify:

- Parent process
- Command line arguments
- Source and destination files
- User account
- Execution time
- Any related suspicious activity

Determine whether the operation was part of legitimate administration or an attempt to manipulate malicious payloads.

---

## Expected False Positives

- Certificate management
- Administrative scripts
- Security administrators

---

## Why This Detection Matters

Attackers commonly abuse `certutil` as a Living-off-the-Land Binary (LOLBin) to encode, decode, or transfer malicious payloads while avoiding detection.