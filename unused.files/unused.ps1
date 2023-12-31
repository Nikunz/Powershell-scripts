﻿<#
.SYNOPSIS
	Lists unused files in a directory tree
.DESCRIPTION
	This PowerShell script scans and lists files in a folder with last access time older than number of days.
.PARAMETER DirTree
	Specifies the path to the directory tree
.PARAMETER Days
	Specifies the number of days
#>

param([string]$DirTree = "C:\Users\koppu\Downloads", [int]$Days = 100)

write-host "Listing files in $DirTree with last access time older than $Days days"

try {
	$cutOffDate = (Get-Date).AddDays(-$Days)

	Get-ChildItem -path $DirTree -recurse | Where-Object {$_.LastAccessTime -le $cutOffDate} | select fullname

	exit 0 # success
} catch {
	"Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
