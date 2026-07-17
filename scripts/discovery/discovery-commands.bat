@echo off
REM Windows Discovery Commands Validation Script
REM Home SOC Lab
REM
REM Purpose:
REM Generates Windows discovery activity
REM for Sysmon and Wazuh detection validation.

echo Starting Windows Discovery Validation

echo.
echo Current User:
whoami

echo.
echo Hostname:
hostname

echo.
echo Network Configuration:
ipconfig

echo.
echo Local User Accounts:
net user

echo.
echo Discovery validation completed

pause