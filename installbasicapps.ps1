#install basic programs script
#i wrote this because i got tired of reinstalling all the same shit after imaging 
# /shrug


#pre script stuff
New-Item -path "C:\" -Name "gingeescript" -ItemType "directory"
$swdownloads = "C:\gingeescript"

#Visual Studio Code
Invoke-WebRequest -uri "https://code.visualstudio.com/sha/download?build=stable&os=win32-x64" -outfile "$swdownloads\vscodeinstall.exe"