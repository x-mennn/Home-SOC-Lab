# Certutil Encode and Decode Simulation

## Objective

This simulation was performed to validate the detection of Certutil file encoding and decoding activities. The generated telemetry was used to verify Sysmon event collection and Wazuh alert generation for LOLBin usage.

---

## Technique Overview

Certutil is a legitimate Windows command-line utility used to manage certificates. Because it is digitally signed by Microsoft and available on most Windows systems, attackers may abuse it as a Living Off the Land Binary (LOLBin) to encode, decode, download, or transfer files while blending in with legitimate system activity.

---

## MITRE ATT&CK

| Technique | ID |
|-----------|----|
| System Binary Proxy Execution | T1218 |

> **Note:** This simulation focused on validating Certutil execution for detection purposes rather than emulating a complete attack chain.

---

## Commands Executed

```cmd
certutil -encode input.txt encoded.txt

certutil -decode encoded.txt decoded.txt
```

> The commands were executed on the Windows 10 endpoint to generate process creation events for detection validation.

---

## Expected Detection

The simulation was expected to generate:

- Sysmon Process Creation (Event ID 1)
- Wazuh alert for Certutil execution
- Process information including command line, parent process, and user context

---

## Outcome

The simulation successfully generated the expected Sysmon events and Wazuh alerts, confirming that Certutil activity was being monitored correctly within the Home SOC Lab.

---

## Related Documentation

- `../docs/certutil-detection.md`
- `../detection-rules/`
- `../incident-reports/`
- `../mitre-attack/`
- `../sigma-rules/`