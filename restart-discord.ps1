start-process taskkill -ArgumentList "/IM discord*","/f" -PassThru -Wait
start-process -FilePath "$env:LOCALAPPDATA\Discord\app-1.0.9002\Discord.exe"