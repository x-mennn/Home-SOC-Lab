# Incident Report - Windows Discovery Activity

## Incident Summary

| Field | Value |
|--------|-------|
| Incident ID | INC-002 |
| Detection | Windows Discovery Commands |
| Severity | Medium |
| Status | Closed |
| Detection Source | Wazuh + Sysmon |
| Endpoint | soc-win10 |

---

## Description

Multiple Windows discovery commands were detected on the monitored endpoint during a controlled security validation exercise.

The activity generated Sysmon Process Creation events, which were collected by the Wazuh Agent and analyzed by the Wazuh Manager.

The detected commands were reviewed to determine whether they represented normal administrative activity or potential reconnaissance behavior.

---

## Detection Details

| Field | Value |
|--------|-------|
| Wazuh Rules | 92004, 92031, 92032, 92036 |
| Sysmon Event ID | 1 |
| Log Source | Windows Sysmon |
| Processes Observed | cmd.exe |

---

## MITRE ATT&CK

| Technique | Name |
|-----------|------|
| T1033 | System Owner/User Discovery |
| T1082 | System Information Discovery |
| T1016 | System Network Configuration Discovery |
| T1087 | Account Discovery |

---

## Investigation

### Initial Alert

Wazuh generated alerts after detecting Windows command execution associated with system and account discovery activities.

The analyst reviewed the generated alerts and correlated them with Sysmon process creation telemetry.

---

### Investigation Process

The analyst reviewed:

- Executed commands
- Command-line arguments
- Parent process information
- User account context
- Execution timestamps
- Endpoint activity history

The objective was to determine whether the discovery activity was part of normal system administration or suspicious reconnaissance behavior.

---

### Evidence Collected

- Sysmon Event ID 1 Process Creation logs
- Wazuh alerts generated from discovery activity
- Command execution details
- JSON event information from Wazuh Dashboard

Commands observed:

- whoami
- hostname
- ipconfig
- net user

---

## Analysis

Discovery commands are commonly used by attackers after gaining access to a system to collect information about the environment.

The commands observed in this investigation can provide information about:

- Current user privileges
- System identity
- Network configuration
- Available user accounts

The activity was intentionally generated within the Home SOC Lab to validate detection capabilities.

No unauthorized access, persistence, or lateral movement activity was identified.

---

## Impact Assessment

No security impact was identified.

The activity occurred inside an isolated lab environment and was performed only for detection validation purposes.

---

## Response

The following actions were performed:

- Reviewed Wazuh alerts
- Verified Sysmon process creation events
- Analyzed executed discovery commands
- Confirmed MITRE ATT&CK technique mapping
- Documented investigation results

---

## Lessons Learned

Discovery activity is an important indicator during post-compromise investigations.

Monitoring command execution telemetry helps security analysts identify reconnaissance behavior and understand attacker activity after initial access.

Combining Sysmon visibility with Wazuh detection rules improves endpoint monitoring and investigation capabilities.