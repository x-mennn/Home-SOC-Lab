# MITRE ATT&CK Technique Summary

## Overview

This document provides short explanations of MITRE ATT&CK techniques covered in the Home SOC Lab.

Each technique is linked to implemented detections that were validated using Sysmon telemetry and Wazuh alerts.

---

# T1059.001 - PowerShell

## Description

PowerShell is a command-line scripting interpreter used for Windows administration and automation.

Attackers frequently abuse PowerShell for command execution, payload execution, and post-exploitation activities.

## Detection Coverage

- Detection: PowerShell Execution
- Wazuh Rule: 92205
- Telemetry: Sysmon Event ID 1

## Lab Validation

PowerShell execution activity was generated on the Windows endpoint and successfully detected through Wazuh monitoring.

---

# T1033 - System Owner/User Discovery

## Description

This technique involves identifying the current user account and privilege context on a compromised system.

Attackers perform user discovery to understand available access levels and determine possible targets.

## Detection Coverage

- Detection: Windows Discovery Commands
- Telemetry: Sysmon Event ID 1

## Lab Validation

User discovery commands were executed on the Windows endpoint and analyzed through Wazuh alerts.

---

# T1082 - System Information Discovery

## Description

Attackers collect information about the operating system and host environment after gaining access to a system.

This information helps attackers understand the target environment.

## Detection Coverage

- Detection: Windows Discovery Commands
- Telemetry: Sysmon Event ID 1

## Lab Validation

System information discovery activity was generated and validated through endpoint monitoring.

---

# T1016 - System Network Configuration Discovery

## Description

This technique involves collecting network configuration information from a compromised host.

Attackers use this information to understand network connectivity and identify potential targets.

## Detection Coverage

- Detection: Network Discovery Commands
- Telemetry: Sysmon Event ID 1

## Lab Validation

Network configuration discovery commands were monitored and detected within the lab environment.

---

# T1087 - Account Discovery

## Description

Account Discovery involves identifying available user accounts on a system or environment.

Attackers use account information for privilege escalation and lateral movement planning.

## Detection Coverage

- Detection: Account Discovery Commands
- Telemetry: Sysmon Event ID 1

## Lab Validation

Account enumeration activity was generated and successfully monitored.

---

# T1140 - Deobfuscate/Decode Files or Information

## Description

Attackers may encode or decode files to hide malicious content or bypass security controls.

Certutil is one example of a legitimate Windows utility that can be abused for this purpose.

## Detection Coverage

- Detection: Certutil Encode/Decode
- Wazuh Rule: 92073
- Telemetry: Sysmon Event ID 1

## Lab Validation

Certutil encoding and decoding activity was performed and detected through Wazuh monitoring.

---

# T1218.005 - Mshta

## Description

Mshta is a Windows utility used to execute HTML Application files.

Attackers abuse mshta.exe to execute scripts while using a trusted Windows binary.

## Detection Coverage

- Detection: Custom MSHTA Detection
- Wazuh Rule: 100102
- Telemetry: Sysmon Event ID 1

## Lab Validation

Suspicious mshta execution was simulated and detected using a custom Wazuh rule.

---

# T1218.010 - Regsvr32

## Description

Regsvr32 is a Windows utility used for registering DLL files.

Attackers abuse regsvr32 as a trusted binary to execute malicious code and avoid detection.

## Detection Coverage

- Detection: Custom Regsvr32 Detection
- Wazuh Rule: 100103
- Telemetry: Sysmon Event ID 1

## Lab Validation

Regsvr32 execution activity was simulated and successfully detected.

---

# Summary

The Home SOC Lab demonstrates practical understanding of MITRE ATT&CK by mapping implemented detections to attacker behaviors.

Each technique included in this document was validated through:

- Endpoint telemetry collection
- Wazuh alert generation
- Investigation workflow
- Detection documentation