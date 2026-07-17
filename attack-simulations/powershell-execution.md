# PowerShell Execution Simulation

## Objective

This simulation was performed to validate the detection of PowerShell process execution within the Home SOC Lab. The generated telemetry was used to verify Sysmon event collection and Wazuh alert generation.

---

## Technique Overview

PowerShell is a legitimate Windows administration and automation tool. Because of its flexibility, it is frequently abused by attackers for reconnaissance, execution, persistence, and post-exploitation activities. Monitoring PowerShell execution is an important capability for detecting suspicious behavior.

---

## MITRE ATT&CK

| Technique | ID |
|-----------|----|
| Command and Scripting Interpreter: PowerShell | T1059.001 |

---

## Commands Executed

```powershell
powershell
```

> The command was executed on the Windows 10 endpoint to generate a PowerShell process creation event.

---

## Expected Detection

The simulation was expected to generate:

- Sysmon Process Creation (Event ID 1)
- Wazuh alert for PowerShell execution
- Process information including command line, parent process, and user context

---

## Outcome

The simulation successfully generated the expected Sysmon event and corresponding Wazuh alert, confirming that PowerShell execution was being monitored correctly within the lab environment.

---

## Related Documentation

- `../docs/powershell-detection.md`
- `../detection-rules/`
- `../incident-reports/`
- `../mitre-attack/`
- `../sigma-rules/`