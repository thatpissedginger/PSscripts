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

