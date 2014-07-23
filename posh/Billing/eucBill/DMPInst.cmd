@ECHO OFF
SETLOCAL
cls

@TITLE -- Desktop Management Portal Install Launch --

:: Check for Powershell v2.0 or later
ECHO - Checking for Powershell version...
powershell.exe if($host.Version.Major -ge 2) { write-host "OK" } | find "OK" >nul

IF ERRORLEVEL 1 (
	COLOR 0C
	ECHO - This script requires PowerShell version 2.0 or higher!
	ECHO - Please install v2.0 or later, then re-run this script.
	COLOR
	pause
	EXIT
	)

"%SYSTEMROOT%\system32\windowspowershell\v1.0\powershell.exe " -ExecutionPolicy bypass -file "%~dp0eucBill.Export.ps1"

:END
ENDLOCAL
