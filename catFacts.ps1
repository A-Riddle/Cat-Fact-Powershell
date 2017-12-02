#Creates the object
Add-Type -AssemblyName System.Speech;
#Runs the code
$(New-object "System.Speech.Synthesis.SpeechSynthesizer").speak($(irm 'https://catfact.ninja/fact').fact)
