$AllProtocols = [System.Net.SecurityProtocolType]'Ssl3,Tls,Tls11,Tls12'
[System.Net.ServicePointManager]::SecurityProtocol = $AllProtocols
#Creates the object
Add-Type -AssemblyName System.Speech;
#Runs the code
$(New-object "System.Speech.Synthesis.SpeechSynthesizer").speak($(irm 'https://catfact.ninja/fact' -UseBasicParsing).fact)
