@echo off
REM Regsvr32 Detection Validation Script
REM Home SOC Lab
REM
REM Purpose:
REM Generates regsvr32.exe execution telemetry
REM for Sysmon and Wazuh detection validation.

echo Starting Regsvr32 Detection Validation

echo.
echo Executing regsvr32 process...

regsvr32.exe /?

echo.
echo Regsvr32 validation completed

pause