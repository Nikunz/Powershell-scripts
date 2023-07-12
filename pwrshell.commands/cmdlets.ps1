<#
.SYNOPSIS
	Lists all PowerShell cmdlets
.DESCRIPTION
	This PowerShell script lists all PowerShell cmdlets.
#>

try {
	Get-Command -Command-Type cmdlet
	exit 0 # success
} catch {
	"Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
