Get-Process | Select-Object Id, Name, Path | Where-Object { $_.Name -match "s" } | ForEach-Object {
    if ($_.Id -lt 10000 -and $_.Path -ne $null )
    {
        Write-Host "Este proceso cumple $($_.Path), $($_.Name)"
    }
}