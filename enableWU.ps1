#Enable UseWUServer Registry windows update then restart the Windows Update Service
Stop-Service "Windows Update"
Write-Host "Windows Update Service Stopped"
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "UseWUServer" -Value 1
Write-Host "UseWUServer Registry value updated"
Start-Service "Windows Update"
Write-Host "Windows Update Service restarted"