@echo off
REM Certutil Encode and Decode Validation Script
REM Home SOC Lab
REM
REM Purpose:
REM Generates certutil activity
REM for Sysmon and Wazuh detection validation.

echo Starting Certutil Detection Validation

echo Creating test file...

echo Home SOC Lab Certutil Test > test.txt

echo.
echo Encoding file using certutil...

certutil -encode test.txt encoded.txt

echo.
echo Decoding file using certutil...

certutil -decode encoded.txt decoded.txt

echo.
echo Certutil validation completed

pause