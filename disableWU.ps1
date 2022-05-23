#Stop Windows update Service then change UseWUServer Registry value to 0 then start windows update
Get-Service "Windows Update" | Stop-Service
Write-Host "Windows Update Service Stopped"
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\WindowsUpdate\Settings" -Name "UseWUServer" -Value 0
Write-Host "UseWUServer Registry Value Changed to 0"
Start-Service "Windows Update"
Write-Host "Windows Update Service Started"
