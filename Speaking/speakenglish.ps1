﻿<#
.SYNOPSIS
	Speaks text in English
.DESCRIPTION
	This PowerShell scripts speaks the given text with an English text-to-speech (TTS) voice.
.PARAMETER text
	Specifies the text to speak
.EXAMPLE
	PS> ./speak-english Hi
#>

param([string]$text = "")

try {
	if ("$text" -eq "") { $text = Read-Host "Enter the English text to speak" }

	$TTS = New-Object -ComObject SAPI.SPVoice
	foreach ($voice in $TTS.GetVoices()) {
		if ($voice.GetDescription() -like "*- English*") {
			$TTS.Voice = $voice
			[void]$TTS.Speak($text)
			exit 0 # success
		}
	}
	throw "No English voice for text-to-speech (TTS) found - please install one."
} catch {
	"Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
