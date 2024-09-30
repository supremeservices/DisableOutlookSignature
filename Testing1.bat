@echo off
:: Set registry details
set "regPath=HKCU\Software\Microsoft\Office\16.0\Outlook\Setup"
set "valueName=DisableRoamingSignaturesTemporaryToggle"
set "valueData=1"

:: Create the registry key and set the DWORD value
reg add "%regPath%" /v "%valueName%" /t REG_DWORD /d "%valueData%" /f

pause
