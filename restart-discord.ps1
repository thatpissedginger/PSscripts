start-process taskkill -ArgumentList "/IM discord*","/f" -PassThru -Wait
start-process -FilePath "$env:LOCALAPPDATA\Discord\Update.exe"
