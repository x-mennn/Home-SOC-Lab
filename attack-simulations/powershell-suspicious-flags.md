# PowerShell Suspicious Flags Simulation

## Objective

This simulation was performed to validate the detection of PowerShell execution using commonly abused command-line flags. The generated telemetry was used to verify Sysmon event collection and Wazuh alert generation.

---

## Technique Overview

Attackers frequently execute PowerShell using suspicious command-line flags to bypass security restrictions, avoid loading user profiles, and reduce visibility during execution. Monitoring these flags helps identify potentially suspicious PowerShell activity.

---

## MITRE ATT&CK

| Technique | ID |
|-----------|----|
| Command and Scripting Interpreter: PowerShell | T1059.001 |

---

## Commands Executed

```powershell
powershell.exe -ExecutionPolicy Bypass -NoProfile -WindowStyle Hidden
```

> The command was executed on the Windows 10 endpoint to generate a PowerShell process creation event using commonly abused execution flags.

---

## Expected Detection

The simulation was expected to generate:

- Sysmon Process Creation (Event ID 1)
- Wazuh alert for suspicious PowerShell execution flags
- Process information including the command line, parent process, and user context

---

## Outcome

The simulation successfully generated the expected Sysmon event and corresponding Wazuh alert, confirming that PowerShell execution with suspicious command-line flags was being monitored correctly within the Home SOC Lab.

---

## Related Documentation

- `../docs/powershell-suspicious-flags.md`
- `../detection-rules/`
- `../incident-reports/`
- `../mitre-attack/`
- `../sigma-rules/`