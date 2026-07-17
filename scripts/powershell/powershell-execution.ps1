# PowerShell Execution Detection Validation Script
# Home SOC Lab
#
# Purpose:
# Generates PowerShell execution telemetry
# for Sysmon and Wazuh detection validation.

Write-Host "PowerShell Detection Validation Started"

# Display current user information
Write-Host "Current User:"
whoami

# Display hostname information
Write-Host "Hostname:"
hostname

Write-Host "PowerShell execution completed"