#powershell script to download and install firefox silently for all users

#Setup some basic variables for storage and such
$tempstore = "C:\tempitemshit"

#Establish a working directory on the c drive for temp files
New-Item -Path C:\tempitemshit -ItemType Directory
Write-Host "Working Directory Established"
#download the latest version of firefox with invoke-webrequest
Invoke-WebRequest -Uri "https://download.mozilla.org/?product=firefox-latest&os=win&lang=en-US" -OutFile $tempstore\firefox.exe
Write-Host "Download Complete"
#silently install firefox for all users
start-process -filepath $tempstore\firefox.exe -argumentlist "-ms" -Verbose -wait
Write-Host "Firefox installed"

#clean up the temp files
Remove-Item -Path $tempstore -Recurse -Force
Write-Host "Temp files removed"
