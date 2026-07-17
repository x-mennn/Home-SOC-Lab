# Incident Report - PowerShell Execution

## Incident Summary

| Field | Value |
|--------|-------|
| Incident ID | INC-001 |
| Detection | Suspicious PowerShell Execution |
| Severity | Medium |
| Status | Closed |
| Detection Source | Wazuh + Sysmon |
| Endpoint | soc-win10 |

---

## Description

A PowerShell process execution was detected on the monitored Windows endpoint during a controlled security validation exercise.

The execution generated a Sysmon Process Creation event (Event ID 1), which was forwarded to the Wazuh Manager and analyzed using PowerShell detection rules.

The alert was investigated to determine whether the activity represented legitimate administrative behavior or potentially suspicious execution.

---

## Detection Details

| Field | Value |
|--------|-------|
| Wazuh Rule ID | 92205 |
| Sysmon Event ID | 1 |
| Log Source | Windows Sysmon |
| Process | powershell.exe |

---

## MITRE ATT&CK

| Technique | Name |
|-----------|------|
| T1059.001 | Command and Scripting Interpreter: PowerShell |

---

## Investigation

### Initial Alert

Wazuh generated an alert after detecting PowerShell execution activity on the monitored Windows endpoint.

The alert was reviewed through the Wazuh Dashboard, and the related Sysmon telemetry was analyzed for additional context.

---

### Investigation Process

The analyst reviewed the following information:

- Process name
- Command-line arguments
- Parent-child process relationship
- User account responsible for execution
- Process execution timestamp
- Endpoint activity context

The collected telemetry was analyzed to determine whether the PowerShell activity was legitimate administrative behavior or suspicious execution.

---

### Evidence Collected

- Process Name: powershell.exe
- Data Source: Sysmon Event ID 1
- Detection Rule: 92205
- User Account: Verified during investigation
- Endpoint: soc-win10
- Wazuh Alert Data: JSON event details reviewed

---

## Analysis

PowerShell is a legitimate Windows administration utility but is frequently abused by attackers for command execution, payload execution, and post-exploitation activities.

The activity was intentionally generated as part of a controlled security validation exercise to verify PowerShell detection capabilities.

No unauthorized activity, persistence mechanisms, or additional malicious behavior were identified during investigation.

---

## Impact Assessment

No security impact was identified.

The activity was performed within the isolated Home SOC Lab environment for detection validation and security monitoring improvement.

---

## Response

The following investigation actions were performed:

- Verified the Sysmon process creation event
- Reviewed the Wazuh alert details
- Confirmed the detection rule triggered successfully
- Validated the collected telemetry
- Documented investigation findings

---

## Lessons Learned

PowerShell remains one of the most frequently abused Windows utilities.

Monitoring PowerShell activity through Sysmon process creation events and Wazuh detection rules provides valuable visibility into administrative actions and potentially malicious execution.

Effective endpoint monitoring helps security analysts identify suspicious behavior and perform timely investigation.