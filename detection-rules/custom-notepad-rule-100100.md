# Rule 100100 - Notepad Execution

## Rule Information

| Field | Value |
|--------|-------|
| Rule ID | 100100 |
| Rule Type | Custom Wazuh Rule |
| Severity | Medium |
| Platform | Windows |
| Data Source | Sysmon Event ID 1 (Process Creation) |

---

## Detection Summary

This custom rule detects the execution of `notepad.exe` on the monitored endpoint.

---

## Trigger Logic

The rule matches Sysmon process creation events where the executed process is `notepad.exe`.

---

## MITRE ATT&CK Mapping

| Technique | Name |
|-----------|------|
| N/A | Demonstration Rule |

---

## Investigation Guidance

A SOC analyst should verify:

- Parent process
- User account
- Command line
- Execution time
- Whether the execution is expected

---

## Expected False Positives

- Everyday user activity
- Administrative usage
- Text file editing

---

## Why This Detection Matters

This rule was created to demonstrate custom Wazuh rule development, validation, and testing within the Home SOC Lab.