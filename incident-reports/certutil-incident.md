# Incident Report - Certutil Encode/Decode Activity

## Incident Summary

| Field | Value |
|--------|-------|
| Incident ID | INC-003 |
| Detection | Suspicious Certutil Usage |
| Severity | Medium |
| Status | Closed |
| Detection Source | Wazuh + Sysmon |
| Endpoint | soc-win10 |

---

## Description

A suspicious certutil execution was detected on the monitored Windows endpoint during a controlled security validation exercise.

The activity generated a Sysmon Process Creation event, which was collected by the Wazuh Agent and analyzed by the Wazuh Manager.

The investigation focused on determining whether certutil was being used for legitimate certificate management purposes or potentially suspicious file encoding and decoding activity.

---

## Detection Details

| Field | Value |
|--------|-------|
| Wazuh Rule ID | 92073 |
| Sysmon Event ID | 1 |
| Log Source | Windows Sysmon |
| Process | certutil.exe |

---

## MITRE ATT&CK

| Technique | Name |
|-----------|------|
| T1140 | Deobfuscate/Decode Files or Information |

---

## Investigation

### Initial Alert

Wazuh generated an alert after detecting certutil execution patterns associated with encoding and decoding activity.

The alert was reviewed along with Sysmon process creation telemetry to understand the execution context.

---

### Investigation Process

The analyst reviewed:

- Process name
- Command-line arguments
- User context
- Parent process
- Execution timestamp
- File activity related to the command

The investigation was performed to identify whether certutil usage was legitimate administrative activity or possible abuse of a built-in Windows utility.

---

### Evidence Collected

- Process Name: certutil.exe
- Data Source: Sysmon Event ID 1
- Detection Rule: 92073
- Command execution details
- Wazuh JSON alert data
- Endpoint: soc-win10

---

## Analysis

Certutil is a legitimate Windows certificate management utility.

However, attackers may abuse certutil as a Living-off-the-Land Binary (LOLBIN) to encode, decode, or manipulate files during post-exploitation activities.

The activity was intentionally generated in the Home SOC Lab to validate detection capability.

No unauthorized file execution, persistence mechanism, or additional malicious activity was identified.

---

## Impact Assessment

No security impact was identified.

The activity was performed in an isolated lab environment for security monitoring and detection validation purposes.

---

## Response

The following actions were performed:

- Reviewed the Wazuh alert
- Verified Sysmon process creation telemetry
- Analyzed certutil execution details
- Confirmed detection rule functionality
- Documented investigation findings

---

## Lessons Learned

Monitoring built-in Windows utilities is important because legitimate administrative tools can also be abused by attackers.

Detecting suspicious certutil behavior helps security analysts identify potential file manipulation and post-exploitation activities.