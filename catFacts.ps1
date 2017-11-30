$AllProtocols = [System.Net.SecurityProtocolType]'Ssl3,Tls,Tls11,Tls12'
[System.Net.ServicePointManager]::SecurityProtocol = $AllProtocols
$webReply = Invoke-WebRequest -Uri "https://catfact.ninja/fact" -UseBasicParsing
$catJson = $webReply.Content
$catObject = ConvertFrom-Json $catJson
#$wshell = New-Object -ComObject Wscript.Shell
Add-Type -AssemblyName System.speech 
$speak = New-Object System.Speech.Synthesis.SpeechSynthesizer 
$speak.Speak($catObject.fact)
#$wshell.Popup($catObject.fact,0,"Cats",0x1)
