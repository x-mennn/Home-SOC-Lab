# Discovery Commands Simulation

## Objective

This simulation was performed to validate the detection of common Windows discovery commands. The generated telemetry was used to verify Sysmon event collection and Wazuh alert generation.

---

## Technique Overview

Discovery techniques allow attackers to gather information about a compromised system before performing additional actions. Monitoring these commands helps security teams identify suspicious reconnaissance activity at an early stage of an attack.

---

## MITRE ATT&CK

| Technique | ID |
|-----------|----|
| System Owner/User Discovery | T1033 |
| System Information Discovery | T1082 |
| System Network Configuration Discovery | T1016 |
| Account Discovery | T1087 |

---

## Commands Executed

| Command | Purpose |
|---------|---------|
| `whoami` | Identify the currently logged-in user |
| `hostname` | Display the system hostname |
| `ipconfig` | View network configuration |
| `net user` | Enumerate local user accounts |

---

## Expected Detection

The simulation was expected to generate:

- Sysmon Process Creation (Event ID 1)
- Wazuh alerts for Windows discovery commands
- Process information including the command line, parent process, user, and execution time

---

## Outcome

All discovery commands generated the expected Sysmon events and corresponding Wazuh alerts, confirming that Windows discovery activity was being monitored correctly within the Home SOC Lab.

---

## Related Documentation

- `../docs/discovery-detection.md`
- `../detection-rules/`
- `../incident-reports/`
- `../mitre-attack/`
- `../sigma-rules/`