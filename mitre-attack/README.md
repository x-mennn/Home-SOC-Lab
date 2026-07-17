# MITRE-ATT&CK Mapping

## Overview

This directory contains MITRE ATT&CK mappings for detections implemented and validated within the Home SOC Lab.

MITRE ATT&CK is a globally used framework that categorizes adversary behaviors into tactics and techniques. Mapping detections to ATT&CK techniques helps security analysts understand attacker behavior and improve detection coverage.

---

## Purpose

The purpose of this directory is to demonstrate:

- Detection-to-technique mapping
- Understanding of attacker behavior
- Security monitoring coverage
- Relationship between endpoint telemetry and adversary techniques

---

## Data Sources

MITRE mappings in this project are based on:

- Wazuh detection alerts
- Sysmon endpoint telemetry
- Validated attack simulations
- Detection documentation

---

## Covered Techniques

Current ATT&CK techniques covered:

| Technique ID | Technique Name |
|-------------|----------------|
| T1059.001 | PowerShell |
| T1033 | System Owner/User Discovery |
| T1082 | System Information Discovery |
| T1016 | System Network Configuration Discovery |
| T1087 | Account Discovery |
| T1140 | Deobfuscate/Decode Files or Information |
| T1218.005 | Mshta |
| T1218.010 | Regsvr32 |

---

## Repository Usage

The files in this directory provide:

- Detection coverage overview
- ATT&CK technique references
- Interview-friendly explanations of implemented detections

---

## Project Scope

The ATT&CK mappings represent techniques validated inside the Home SOC Lab environment and are based on implemented detections rather than theoretical coverage.