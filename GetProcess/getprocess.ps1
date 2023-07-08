$ProcessName = "WhatsApp"
$Process = Get-Process -Name $ProcessName

if ($Process) {
    $ProcessInfo = [PSCustomObject]@{
        Name = $Process.Name
        ID = $Process.Id
        CPU = $Process.CPU
        Memory = $Process.WorkingSet
        StartTime = $Process.StartTime
    }

    $ProcessInfo | Export-Csv -Path ".\ProcessInfo.csv" -NoTypeInformation 
    Write-Host "Process information exported to ProcessInfo.csv"

} else {
    Write-Host "No process found with name $ProcessName"
}
