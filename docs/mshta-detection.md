# MSHTA Execution Detection

## Objective

Validate the detection of **mshta.exe** execution using Sysmon and a custom Wazuh rule. MSHTA is a legitimate Microsoft binary that attackers frequently abuse to execute malicious HTA files or scripts while bypassing application controls.

---

## MITRE ATT&CK

| Technique | ID |
|-----------|----|
| Signed Binary Proxy Execution: Mshta | T1218.005 |

**Tactic**

- Defense Evasion

---

## Attack Simulation

Command executed on the Windows endpoint:

```cmd
mshta.exe vbscript:Execute("CreateObject(""WScript.Shell"").Run ""notepad.exe"":close")
```

This launches **Notepad** through **mshta.exe**, simulating a common LOLBin execution technique.

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
- ParentCommandLine
- User
- Process GUID

---

## Wazuh Detection

**Detection Type**

Custom Rule

**Rule ID**

```
100102
```

**Rule Description**

```
Custom Detection - MSHTA Executed
```

**Rule Level**

```
10
```

---

## Detection Logic

The custom rule monitors Sysmon Process Creation events and triggers whenever the executed image matches:

```
C:\Windows\System32\mshta.exe
```

---

## Threat Hunting

Threat Hunting confirmed that the custom rule successfully generated an alert after executing the attack simulation.

Verified:

- Rule ID
- Alert Time
- Endpoint
- Process Information

---

## JSON Investigation

The alert JSON included valuable investigation fields such as:

- Image
- CommandLine
- User
- Computer
- Process GUID
- Parent Process

These fields help analysts understand the execution chain during an investigation.

---

## False Positives

Possible legitimate uses include:

- Legacy HTA applications
- Administrative scripts
- Internal enterprise tools

In a home lab environment, legitimate MSHTA execution is uncommon.

---

## SOC Investigation

During an investigation an analyst should verify:

- Who executed mshta.exe
- Parent process
- Command line arguments
- Child processes
- Network activity
- Persistence mechanisms
- Additional suspicious PowerShell activity

---

## Screenshots

- Attack Simulation
- Sysmon Event ID 1
- Wazuh Alert
- JSON Event
- Rule Details

---

## Result

The custom Wazuh rule successfully detected MSHTA execution and generated an alert, improving visibility into a commonly abused Windows LOLBin technique.