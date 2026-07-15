# PowerShell Suspicious Flags Detection

## Objective

Validate the detection of suspicious PowerShell execution using commonly abused command-line flags.

---

## Lab Scenario

Attackers frequently execute PowerShell using suspicious parameters to bypass restrictions and reduce visibility during malicious activities.

---

## Attack Simulation

Executed the following command on the Windows 10 endpoint:

```powershell
powershell.exe -ExecutionPolicy Bypass -NoProfile -WindowStyle Hidden
```

---

## Detection Validation

- Sysmon Event ID 1 generated successfully.
- Wazuh detected the activity.
- Rule ID: **92027**
- Detection verified in the Threat Hunting dashboard.

---

## JSON Investigation

Verified the event JSON to confirm:

- Process Image
- Command Line
- Rule Information
- Sysmon Event ID

---

## Rule Investigation

Rule ID:

**92027**

Description:

> Powershell process spawned powershell instance.

---

## MITRE ATT&CK Mapping

| Technique | ID |
|-----------|----|
| Command and Scripting Interpreter: PowerShell | T1059.001 |

---

## SOC Analyst Assessment

### Alert Severity

Low-Medium

### Classification

True Positive (Benign Lab Activity)

### Investigation Summary

The alert was generated after launching PowerShell with suspicious execution flags during lab validation.

---

## Learning Outcomes

- Validated PowerShell suspicious flag detection.
- Investigated Wazuh alert generation.
- Reviewed event JSON.
- Verified Threat Hunting results.

---

## Screenshots

### Threat Hunting

- powershell-suspicious-flags.png

### Detection Rules

- rule-92027-details.png
- rule-92027-json-event.png

---

## Git Commit

```bash
git add .
git commit -m "Sprint 17: Validated PowerShell suspicious flags detection"
git push
```