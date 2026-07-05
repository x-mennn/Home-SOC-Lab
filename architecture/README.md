# Home SOC Lab Architecture

## Objective

The objective of this Home SOC Lab is to build a professional Security Operations Center (SOC) environment capable of collecting endpoint telemetry, detecting malicious activities, analyzing security events, and performing incident investigations using industry-standard open-source security tools.

This project follows enterprise SOC workflows and is designed to simulate real-world attack detection and response scenarios.

---

# Architecture Overview

The Home SOC Lab consists of the following components:

* **Kali Linux** (Attacker Machine)
* **Windows 11** (Victim Endpoint)
* **Sysmon**
* **Wazuh Agent**
* **Wazuh Manager**
* **Elasticsearch**
* **Kibana**

Each component has a dedicated responsibility within the security monitoring pipeline.

---

# Component Details

## 1. Kali Linux

**Purpose**

Acts as the attacker machine used to simulate real-world cyber attacks against the Windows endpoint.

**Examples**

* Network Scanning
* Port Enumeration
* Brute Force Attacks
* SMB Enumeration
* Reverse Shell Simulation
* Metasploit Exploitation
* Web Application Testing

---

## 2. Windows 11 Endpoint

**Purpose**

Acts as the target machine where attack simulations are performed.

This endpoint generates security events that are monitored throughout the SOC pipeline.

Examples of activities include:

* User Logins
* Process Creation
* Network Connections
* PowerShell Execution
* File Creation
* Registry Changes

---

## 3. Sysmon

**Purpose**

Sysmon (System Monitor) extends the default Windows logging capabilities by generating detailed endpoint telemetry.

It records security-relevant events such as:

* Process Creation
* Network Connections
* Image Loading
* Registry Modifications
* Driver Loading
* File Creation
* Process Injection

Sysmon provides significantly more visibility than standard Windows Event Logs.

---

## 4. Wazuh Agent

**Purpose**

The Wazuh Agent collects logs from the Windows endpoint and securely forwards them to the Wazuh Manager for analysis.

Responsibilities include:

* Collect Endpoint Logs
* Monitor File Integrity
* Monitor Security Events
* Forward Telemetry

---

## 5. Wazuh Manager

**Purpose**

The Wazuh Manager acts as the central Security Monitoring Server.

Responsibilities include:

* Log Collection
* Rule Processing
* Threat Detection
* File Integrity Monitoring (FIM)
* Vulnerability Detection
* Alert Generation

---

## 6. Elasticsearch

**Purpose**

Elasticsearch stores all security events and indexed logs.

It enables:

* Fast Log Searching
* Event Indexing
* Historical Log Storage
* High-Speed Queries

---

## 7. Kibana

**Purpose**

Kibana provides visualization and investigation capabilities for security analysts.

It is used to:

* Create Dashboards
* Investigate Alerts
* Search Logs
* Visualize Security Events
* Build Detection Dashboards

---

# Data Flow

The following diagram illustrates how security events travel through the SOC environment.

```text
Kali Linux (Attacker)
          │
          ▼
Windows 11 Endpoint
          │
          ▼
Sysmon
          │
          ▼
Wazuh Agent
          │
          ▼
Wazuh Manager
          │
          ▼
Elasticsearch
          │
          ▼
Kibana Dashboard
          │
          ▼
SOC Analyst
```

---

# Security Monitoring Workflow

1. The attacker performs a simulated attack from the Kali Linux machine.
2. The Windows endpoint generates security events.
3. Sysmon captures detailed endpoint telemetry.
4. The Wazuh Agent forwards collected logs to the Wazuh Manager.
5. The Wazuh Manager analyzes incoming events using detection rules.
6. Security alerts are generated when suspicious activity is detected.
7. Events are indexed and stored in Elasticsearch.
8. Kibana visualizes alerts, dashboards, and security investigations for the SOC analyst.

---

# Project Goals

The primary goals of this Home SOC Lab are:

* Build an enterprise-style SOC environment.
* Simulate real-world cyber attacks.
* Collect endpoint telemetry.
* Detect malicious activity.
* Map detections to the MITRE ATT&CK Framework.
* Create Sigma detection rules.
* Build Kibana dashboards.
* Perform incident investigations.
* Document findings using professional incident reports.

---

# Technologies Used

| Component     | Purpose                    |
| ------------- | -------------------------- |
| Kali Linux    | Attack Simulation          |
| Windows 11    | Target Endpoint            |
| Sysmon        | Endpoint Telemetry         |
| Wazuh Agent   | Log Collection             |
| Wazuh Manager | Security Monitoring        |
| Elasticsearch | Log Storage                |
| Kibana        | Dashboards & Visualization |
| Sigma Rules   | Threat Detection           |
| MITRE ATT&CK  | Attack Mapping             |

---

# Future Enhancements

The Home SOC Lab will be expanded with:

* Attack Simulations
* Detection Engineering
* Sigma Rules
* MITRE ATT&CK Mapping
* Incident Response Reports
* Custom Dashboards
* Threat Hunting Scenarios
* Detection Use Cases
* SOC Investigation Playbooks

---

# Repository Structure

```text
Home-SOC-Lab/
│
├── architecture/
├── attack-simulations/
├── dashboards/
├── detection-rules/
├── docs/
├── incident-reports/
├── installation/
├── mitre-attack/
├── resources/
├── screenshots/
├── scripts/
└── sigma-rules/
```

---

# Summary

This Home SOC Lab is designed to replicate the workflow of a modern Security Operations Center using open-source technologies. The project focuses on attack simulation, security monitoring, threat detection, incident investigation, and professional documentation while following industry best practices.
