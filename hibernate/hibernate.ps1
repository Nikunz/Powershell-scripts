﻿<#
.SYNOPSIS
	Hibernates the computer
.DESCRIPTION
	This PowerShell script enables hibernate mode for the local computer immediately. 
.EXAMPLE
	PS> ./hibernate
#>

try {
	"Bye bye."
	& rundll32.exe powrprof.dll,SetSuspendState 1,1,0 # bHibernate,bForce,bWakeupEventsDisabled
	exit 0 # success
} catch {
	" Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
