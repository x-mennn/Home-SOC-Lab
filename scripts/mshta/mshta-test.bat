@echo off
REM MSHTA Detection Validation Script
REM Home SOC Lab
REM
REM Purpose:
REM Generates mshta.exe execution telemetry
REM for Sysmon and Wazuh detection validation.

echo Starting MSHTA Detection Validation

echo.
echo Executing mshta process...

mshta.exe about:blank

echo.
echo MSHTA validation completed

pause