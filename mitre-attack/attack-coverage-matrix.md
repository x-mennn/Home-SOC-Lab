# MITRE ATT&CK Coverage Matrix

## Overview

This matrix provides an overview of MITRE ATT&CK techniques covered within the Home SOC Lab.

The coverage is based on detections that were implemented, tested, and validated using Sysmon telemetry and Wazuh alerts.

---

## ATT&CK Coverage

| Tactic | Technique ID | Technique Name | Detection Implemented | Validation Status |
|--------|--------------|----------------|----------------------|------------------|
| Execution | T1059.001 | PowerShell | PowerShell Execution Detection | Validated |
| Discovery | T1033 | System Owner/User Discovery | User Discovery Commands | Validated |
| Discovery | T1082 | System Information Discovery | System Information Commands | Validated |
| Discovery | T1016 | System Network Configuration Discovery | Network Discovery Commands | Validated |
| Discovery | T1087 | Account Discovery | Account Enumeration Commands | Validated |
| Defense Evasion | T1140 | Deobfuscate/Decode Files or Information | Certutil Encode/Decode Detection | Validated |
| Defense Evasion | T1218.005 | Mshta | Custom MSHTA Detection Rule | Validated |
| Defense Evasion | T1218.010 | Regsvr32 | Custom Regsvr32 Detection Rule | Validated |

---

## Detection Coverage by Tactic

| ATT&CK Tactic | Coverage |
|---------------|----------|
| Execution | PowerShell Monitoring |
| Discovery | User, System, Network, and Account Discovery |
| Defense Evasion | LOLBin Monitoring and File Decoding Detection |

---

## Telemetry Sources

The following telemetry sources were used for detection validation:

| Source | Purpose |
|--------|---------|
| Sysmon Event ID 1 | Process Creation Monitoring |
| Wazuh Alerts | Detection and Alert Generation |
| Wazuh JSON Events | Investigation and Analysis |

---

## Coverage Analysis

The current Home SOC Lab focuses on endpoint detection capabilities across three major ATT&CK tactics:

### Execution

PowerShell monitoring provides visibility into command and scripting interpreter abuse.

### Discovery

Discovery detections provide visibility into attacker reconnaissance activities after potential system access.

### Defense Evasion

LOLBins such as Certutil, MSHTA, and Regsvr32 demonstrate detection of trusted Windows utilities abused for malicious purposes.

---

## Limitations

The current coverage focuses on endpoint execution and discovery behavior.

Additional ATT&CK coverage could be expanded in future improvements through:

- Persistence detections
- Credential access monitoring
- Lateral movement analysis
- Network-based detections

---

## Summary

The Home SOC Lab demonstrates practical ATT&CK-aligned detection engineering by mapping implemented detections to adversary techniques and validating them through endpoint telemetry.