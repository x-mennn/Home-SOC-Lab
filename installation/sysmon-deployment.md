# 📊 Sysmon Deployment

## Objective

Deploy Sysmon on the Windows endpoint to provide detailed endpoint telemetry for security monitoring and detection engineering.

Sysmon extends native Windows Event Logging by recording detailed system activity that can be collected and analyzed by Wazuh.

---

# Why Sysmon?

Windows Event Logs alone provide limited visibility into endpoint activity.

Sysmon enhances visibility by monitoring:

- Process creation
- Command-line execution
- Network connections
- Registry modifications
- File creation events
- Driver loading
- Image loading

This additional telemetry enables more accurate threat detection and investigation.

---

# Deployment

Sysmon was installed on the Windows 10 endpoint using the Sysmon Modular configuration.

The configuration was selected to provide comprehensive event coverage while minimizing unnecessary log noise.

---

# Wazuh Integration

After deployment:

- Sysmon events were collected by the Wazuh Agent.
- Events were forwarded to the Wazuh Manager.
- Detection rules processed the telemetry.
- Alerts were generated and displayed in the Wazuh Dashboard.

---

# Deployment Verification

The following validation steps were completed:

- Sysmon service running
- Sysmon Event ID generation verified
- Events successfully ingested by Wazuh
- Detection rules triggered successfully
- Alerts visible in the Wazuh Dashboard

---

### Sysmon Service

![Sysmon Service Running](../screenshots/wazuh/sysmon-service-running.png)


### Process Creation Events

![Sysmon Process Creation Event](../screenshots/wazuh/sysmon-process-creation-event.png)

---




# Outcome

Sysmon significantly improved endpoint visibility and enabled the implementation of multiple detections within this project, including:

- PowerShell Execution
- Discovery Commands
- Certutil
- PowerShell EncodedCommand
- PowerShell Suspicious Flags
- MSHTA
- Regsvr32

These detections formed the foundation of the detection engineering and incident response workflow documented throughout this repository.