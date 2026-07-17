# PowerShell EncodedCommand Simulation

## Objective

This simulation was performed to validate the detection of PowerShell commands executed using the `-EncodedCommand` parameter. The generated telemetry was used to verify Sysmon event collection and Wazuh alert generation.

---

## Technique Overview

The `-EncodedCommand` parameter allows PowerShell commands to be executed in Base64-encoded format. Attackers commonly use this technique to obfuscate malicious commands and evade basic detection mechanisms. Monitoring encoded PowerShell execution helps identify potentially suspicious activity.

---

## MITRE ATT&CK

| Technique | ID |
|-----------|----|
| Command and Scripting Interpreter: PowerShell | T1059.001 |

---

## Commands Executed

```powershell
powershell.exe -EncodedCommand <Base64_Payload>
```

> A Base64-encoded PowerShell command was executed on the Windows 10 endpoint to generate telemetry for detection validation.

---

## Expected Detection

The simulation was expected to generate:

- Sysmon Process Creation (Event ID 1)
- Wazuh alert for PowerShell EncodedCommand execution
- Process information including the encoded command line, parent process, and user context

---

## Outcome

The simulation successfully generated the expected Sysmon event and corresponding Wazuh alert, confirming that PowerShell commands executed with the `-EncodedCommand` parameter were being monitored correctly within the Home SOC Lab.

---

## Related Documentation

- `../docs/powershell-encodedcommand-detection.md`
- `../detection-rules/`
- `../incident-reports/`
- `../mitre-attack/`
- `../sigma-rules/`