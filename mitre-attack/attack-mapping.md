# Detection to MITRE ATT&CK Mapping

## Overview

This document maps the detections implemented in the Home SOC Lab to their corresponding MITRE ATT&CK techniques.

The mappings are based on validated attack simulations, Sysmon telemetry, and Wazuh detection alerts generated within the lab environment.

---

## ATT&CK Mapping

| Detection | Wazuh Rule / Detection | MITRE Technique ID | Technique Name | Tactic |
|------------|------------------------|--------------------|----------------|--------|
| PowerShell Execution | Rule 92205 | T1059.001 | PowerShell | Execution |
| Windows Discovery Commands | Rules 92004, 92031, 92032, 92036 | T1033 | System Owner/User Discovery | Discovery |
| Windows Discovery Commands | Rules 92004, 92031, 92032, 92036 | T1082 | System Information Discovery | Discovery |
| Windows Discovery Commands | Rules 92004, 92031, 92032, 92036 | T1016 | System Network Configuration Discovery | Discovery |
| Windows Discovery Commands | Rules 92004, 92031, 92032, 92036 | T1087 | Account Discovery | Discovery |
| Certutil Encode/Decode | Rule 92073 | T1140 | Deobfuscate/Decode Files or Information | Defense Evasion |
| MSHTA Execution | Rule 100102 | T1218.005 | Mshta | Defense Evasion |
| Regsvr32 Execution | Rule 100103 | T1218.010 | Regsvr32 | Defense Evasion |

---

## Mapping Explanation

### T1059.001 - PowerShell

PowerShell is a Windows command-line scripting interpreter frequently used by administrators and also abused by attackers for command execution.

Detection is based on PowerShell process creation telemetry collected through Sysmon and analyzed by Wazuh.

---

### T1033 - System Owner/User Discovery

Attackers use this technique to identify the current logged-in user and understand available privileges on a compromised system.

The detection was validated through user discovery commands executed on the Windows endpoint.

---

### T1082 - System Information Discovery

Attackers collect system information to understand the target environment.

The detection covers commands used to identify system details from the endpoint.

---

### T1016 - System Network Configuration Discovery

Attackers gather network configuration information to understand the system's network environment.

The detection was validated through network discovery commands.

---

### T1087 - Account Discovery

Attackers enumerate user accounts to identify available accounts and potential targets.

The detection covers account discovery activity using Windows commands.

---

### T1140 - Deobfuscate/Decode Files or Information

Attackers may encode or decode files to hide malicious content or transfer data.

Certutil activity was monitored to identify suspicious encoding and decoding behavior.

---

### T1218.005 - Mshta

Attackers abuse mshta.exe, a legitimate Windows utility, to execute malicious scripts while appearing as trusted system activity.

---

### T1218.010 - Regsvr32

Attackers abuse regsvr32.exe, a legitimate Windows binary, to execute code through trusted system processes.

---

## Coverage Summary

| ATT&CK Tactic | Covered Techniques |
|---------------|-------------------|
| Execution | PowerShell |
| Discovery | User Discovery, System Information Discovery, Network Configuration Discovery, Account Discovery |
| Defense Evasion | Certutil, Mshta, Regsvr32 |

---

## Notes

All mappings represent techniques that were actively validated within the Home SOC Lab environment.

The purpose of this mapping is to demonstrate practical detection coverage rather than theoretical ATT&CK knowledge.
