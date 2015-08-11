@echo off
iisreset /stop
xcopy Y:\CopyFilesFromSourceToDestination.ps1 C:\DeploySourceLocation\CopyFilesFromSourceToDestination.ps1 /Y
Powershell Set-ExecutionPolicy RemoteSigned
Powershell C:\DeploySourceLocation\CopyFilesFromSourceToDestination.ps1 "Y:\Source" "C:\Destination"
Powershell Set-ExecutionPolicy Restricted
iisreset /start
PAUSE