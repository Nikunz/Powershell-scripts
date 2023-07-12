<#
.SYNOPSIS
	Writes text á la typewriter
.DESCRIPTION
	This PowerShell script writes the given text with the typewriter effect.
.PARAMETER text
	Specifies the text to write
.PARAMETER speed
	Specifies the speed (250 ms by default)
#>

param([string]$text = "`nHello Everyone`n-----------`n* Learning PowerShell is harder than it seems`n* but still i try to write scripts as much as i can`n* hopefully this script impress you`n* Thanks for listening`n", [int]$speed = 200) # in milliseconds

try {
	$Random = New-Object System.Random
	$text -split '' | ForEach-Object {
		Write-Host -noNewline $_
		Start-Sleep -milliseconds $(1 + $Random.Next($speed))
	}
	Write-Host ""
	exit 0 # success
} catch {
	"Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
