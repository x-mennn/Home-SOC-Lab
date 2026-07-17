# Dashboards

## Overview

This directory contains documentation related to dashboards and visualization used within the Home SOC Lab.

The dashboards were used to monitor security alerts, analyze endpoint activity, and investigate events generated through Wazuh and Sysmon telemetry.

---

## Purpose

The purpose of this directory is to demonstrate:

- Security alert visualization
- SIEM dashboard usage
- Threat hunting workflow
- Event investigation process

---

## Dashboard Components

| Dashboard | Purpose |
|-----------|---------|
| Wazuh Dashboard | Alert monitoring and security event analysis |
| Threat Hunting Dashboard | Manual investigation of endpoint telemetry |

---

## Data Sources

The dashboard analysis was based on:

- Wazuh Security Alerts
- Sysmon Event Logs
- Windows Endpoint Telemetry
- JSON Event Data

---

## Investigation Workflow

The dashboard workflow followed:

1. Generate security activity in the lab environment
2. Collect endpoint telemetry through Sysmon
3. Forward events using Wazuh Agent
4. Analyze alerts in Wazuh Dashboard
5. Investigate event details and validate detection logic

---

## Scope

The dashboards represent the monitoring and investigation capabilities implemented within the Home SOC Lab environment.

They demonstrate practical SIEM usage rather than a complete enterprise SOC dashboard deployment.