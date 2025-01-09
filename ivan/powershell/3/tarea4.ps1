#Para cada uno de los procesos cuyo uso de CPU sea mayor de 1s, muestra
#su ruta al ejecutable (PATH).

Get-Process | Select-Object CPU, Path | ForEach-Object {
    $segundos=$_.CPU
    if ($segundos -gt 1)
    {
        Write-Host $_.path
        Write-Host "Esta ruta lleva $segundos segundos" -ForegroundColor Green
    }
}