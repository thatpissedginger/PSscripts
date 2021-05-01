#install basic programs script
#i wrote this because i got tired of reinstalling all the same shit after imaging 
# /shrug


#pre script stuff
New-Item -path "C:\" -Name "gingeescript" -ItemType "directory"
$swdownloads = "C:\gingeescript"

#Visual Studio Code
Invoke-WebRequest -uri "https://code.visualstudio.com/sha/download?build=stable&os=win32-x64" -outfile "$swdownloads\vscodeinstall.exe"
start-process -FilePath "$swdownloads\vscodeinstall.exe" -ArgumentList "/VERYSILENT","/MERGETASKS=!runcode"
Write-Host "Installing Visual Studio Code"


#Firefox
Invoke-WebRequest -uri "https://download.mozilla.org/?product=firefox-msi-latest-ssl&os=win64&lang=en-US" -outfile "firefoxinstall.msi"
$ffinstaller = "$swdownloads\firefoxinstall.msi"
Start-Process msiexec.exe -ArgumentList "/i $ffinstaller","/qn"
Write-Host "Installing FireFox "

# Steam Install shit
Invoke-WebRequest -uri "https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe" -outfile "steaminstaller.exe"
Start-Process -FilePath "$swdownloads\steaminstaller.exe" -ArgumentList "/s"
Write-Host "Installing Steam"


#discord
Invoke-WebRequest -uri "https://discord.com/api/downloads/distributions/app/installers/latest?channel=stable&platform=win&arch=x86" -outfile "discordinstaller.exe"
Start-Process -FilePath "$swdownloads\discordinstaller.exe"
Write-Host "Installing Discord"


#7-zip
Invoke-WebRequest -Uri "https://www.7-zip.org/a/7z1900-x64.exe" -OutFile "7zipinstaller.exe"
Start-Process -FilePath "$swdownloads\7zipinstaller.exe" -ArgumentList "/S","/D="C:\Program Files\7-zip""