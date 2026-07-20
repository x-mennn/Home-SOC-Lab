# Sprint 15 - Custom Wazuh Detection Rule

## Objective

Create and validate the first custom Wazuh detection rule using local_rules.xml to detect execution of notepad.exe.

---

## Detection Evidence

![Custom Notepad Detection](../screenshots/threat-hunting/custom-notepad-detection.png)

![Local Rule](../screenshots/detection-rules/local-rule-100100.png)

![Rule JSON Event](../screenshots/detection-rules/rule-100100-json-event.png)

![Rule Details](../screenshots/detection-rules/rule-100100-details.png)


---

## Attack Simulation

Executed:

```cmd
notepad.exe

