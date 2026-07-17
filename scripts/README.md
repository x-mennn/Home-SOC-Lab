# Detection Validation Scripts

## Overview

This directory contains scripts used for detection validation within the Home SOC Lab.

The scripts were created to generate controlled security events on the Windows endpoint and verify detection visibility through Sysmon telemetry and Wazuh alerts.

---

## Purpose

The purpose of these scripts is to demonstrate:

- Security event generation
- Detection validation workflow
- Endpoint telemetry testing
- Relationship between attack simulation and SOC monitoring

---

## Script Categories

| Folder | Purpose |
|--------|---------|
| powershell | PowerShell execution validation |
| discovery | Windows discovery command validation |
| certutil | Certutil activity validation |
| mshta | MSHTA execution validation |
| regsvr32 | Regsvr32 execution validation |

---

## Detection Validation Process

The scripts were used in the following workflow:

1. Execute activity on the Windows endpoint
2. Generate Sysmon telemetry
3. Forward events through Wazuh Agent
4. Trigger Wazuh detection rules
5. Investigate generated alerts

---

## Data Sources

The validation process used:

- Sysmon Event ID 1 - Process Creation
- Wazuh Security Alerts
- Wazuh JSON Event Data

---

## Lab Scope

These scripts were created only for the isolated Home SOC Lab environment.

They are intended for:

- Detection engineering practice
- SOC investigation training
- Security monitoring validation

---

## Notes

The scripts represent activities that were already validated during the Home SOC Lab build process.

They do not introduce new detections and only support existing detection documentation.