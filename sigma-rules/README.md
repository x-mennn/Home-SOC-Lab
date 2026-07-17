# Sigma Rules

## Overview

This directory contains Sigma detection rules created for security events validated within the Home SOC Lab.

Sigma is a generic and vendor-neutral detection rule format that allows security teams to describe detection logic in a standardized way across different SIEM platforms.

---

## Purpose

The purpose of these Sigma rules is to demonstrate:

- Detection logic translation into a standard format
- Understanding of endpoint telemetry
- SIEM-independent detection engineering concepts
- Mapping detections to MITRE ATT&CK techniques

---

## Data Source

The Sigma rules in this directory are based on:

- Windows Process Creation telemetry
- Sysmon Event ID 1
- Wazuh alerts
- Validated Home SOC Lab attack simulations

---

## Included Rules

| Rule | Description | MITRE Technique |
|------|-------------|----------------|
| powershell-execution.yml | Detects suspicious PowerShell execution | T1059.001 |
| discovery-commands.yml | Detects Windows discovery activity | T1033, T1082, T1016, T1087 |
| certutil.yml | Detects suspicious certutil usage | T1140 |
| mshta.yml | Detects suspicious mshta execution | T1218.005 |
| regsvr32.yml | Detects suspicious regsvr32 execution | T1218.010 |

---

## Rule Structure

Each Sigma rule contains:

- Rule metadata
- Log source definition
- Detection logic
- False positive considerations
- Severity level
- MITRE ATT&CK mapping

---

## Validation

All Sigma rules represent detections that were previously implemented and tested within the Home SOC Lab environment.

Validation was performed using:

- Sysmon telemetry collection
- Wazuh alert generation
- Detection investigation workflow

---

## Notes

These rules are designed for educational and portfolio demonstration purposes.

The objective is to show practical detection engineering skills rather than create a complete enterprise detection library.