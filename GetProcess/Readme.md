Exporting process information
#Description

this .ps1 script retrieves information about a specific process and exports them to a readable .csv file.
#Requirements

Windows Power Shell with administrator access.
#Process

Windows Powershell with administrator access.
Download or clone this repository.
locate the directory of the script location.
Modify the value of $ProcessName to desired process name.
run the script using the .\ProcessInfoExporter.ps1 command.
When the process is found, the script retrieves the following information (Name, ID, CPU, Memory, Start time).
The result is exported to a CSV file named ProcessInfo.csv in the same directory.
If the process is not found the terminal returns "No process found with name $ProcessName"
#Output Name,ID,CPU,Memory,StartTime ProcessName,ProcessId,CPUUsage,MemoryUsage,StartTime
