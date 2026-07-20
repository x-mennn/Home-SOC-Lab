# Regsvr32 Execution Detection

## Objective

Validate the detection of **regsvr32.exe** execution using Sysmon and a custom Wazuh rule. Regsvr32 is a legitimate Microsoft binary that attackers frequently abuse as a Living-off-the-Land Binary (LOLBin) to execute malicious code and bypass application controls.

---

## MITRE ATT&CK

| Technique | ID |
|-----------|----|
| Signed Binary Proxy Execution: Regsvr32 | T1218.010 |

**Tactic**

- Defense Evasion

---

## Attack Simulation

Command executed on the Windows endpoint:

```cmd
regsvr32.exe
```

The command launches RegSvr32 and generates a Sysmon Process Creation event, allowing detection validation within the lab.

---

## Sysmon Verification

**Event ID**

```
1 - Process Create
```

Verified fields:

- Image
- CommandLine
- ParentImage
- User
- Process GUID

---

## Wazuh Detection

**Detection Type**

Custom Rule

**Rule ID**

```
100103
```

**Rule Description**

```
Custom Detection - Regsvr32 Executed
```

**Rule Level**

```
10
```

---

## Detection Logic

The custom rule monitors Sysmon Process Creation events and generates an alert whenever the executed image matches:

```
C:\Windows\System32\regsvr32.exe
```

---

## Threat Hunting

Threat Hunting confirmed that the custom rule successfully detected Regsvr32 execution.

Verified:

- Rule ID
- Alert Time
- Endpoint
- Process Information

---

## JSON Investigation

The generated alert contains useful investigation fields including:

- Image
- CommandLine
- User
- Computer
- Process GUID
- Parent Process

These fields help analysts understand how Regsvr32 was executed during an investigation.

---

## False Positives

Possible legitimate executions include:

- DLL registration during software installation
- Administrative maintenance
- Application installation and updates

Unexpected Regsvr32 execution on user workstations should be investigated.

---

## SOC Investigation

During an investigation an analyst should verify:

- User account that executed Regsvr32
- Parent process
- Command-line arguments
- Child processes
- Network activity
- Persistence mechanisms
- Additional suspicious LOLBin usage

---
## Detection Evidence

![Regsvr32 Alert](../screenshots/regsvr32/03-wazuh-alert.png)

![Regsvr32 JSON Event](../screenshots/regsvr32/04-json-event.png)

![Regsvr32 Rule Details](../screenshots/regsvr32/05-rule-details.png)

---


## Result

The custom Wazuh rule successfully detected Regsvr32 execution and generated an alert, improving visibility into another commonly abused Windows LOLBin technique.