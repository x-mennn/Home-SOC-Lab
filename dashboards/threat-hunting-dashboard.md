# Threat Hunting Dashboard

## Overview

Threat hunting within the Home SOC Lab involved manually analyzing endpoint telemetry and security events to identify suspicious behavior.

The investigation process used Wazuh event data and Sysmon logs collected from the Windows endpoint.

---

## Threat Hunting Activities

The following activities were investigated:

- PowerShell execution
- Windows discovery commands
- Certutil activity
- MSHTA execution
- Regsvr32 execution

---

## Investigation Approach

The threat hunting workflow:

1. Search relevant security events
2. Filter events based on process activity
3. Analyze command-line information
4. Review user and endpoint context
5. Compare activity against detection logic

---

## Important Event Fields

| Field | Purpose |
|------|---------|
| process.name | Identifies executed process |
| process.command_line | Shows execution arguments |
| user.name | Identifies execution context |
| host.name | Identifies affected endpoint |
| rule.id | Shows triggered detection rule |

---

## Example Investigation

A suspicious PowerShell execution can be investigated by reviewing:

- Executed process
- Command-line arguments
- User account
- Timestamp
- Associated Wazuh rule

---

## Outcome

Threat hunting activities helped validate that implemented detections were working correctly and provided practical experience with SIEM-based investigation workflows.

---

## Future Improvements

Possible improvements:

- Additional visualization panels
- More advanced correlation searches
- Network telemetry integration
- Automated threat hunting queries