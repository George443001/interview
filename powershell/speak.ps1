function talk {
	param
	(
		[parameter(Mandatory = $true)]
		[string]$words
	)
	
	Add-Type -AssemblyName System.speech
    $say = New-Object System.Speech.Synthesis.SpeechSynthesizer
    $say.Speak($words)
 }