#Crea un PowerShell script que sume todos los PIDS de los procesos, si el
#total excede de 10^5, que muestre un mensaje de “Procesos con PIDS
#altos”.

$aux=0

Get-Process | Select-Object Id | ForEach-Object {
    $aux=$aux+$_.Id
    Write-Host trabajando con $_.Id
}
Write-Host $aux
if ($aux -gt 100000)
{
    Write-Host "Procesos con PID altos" -ForegroundColor Red
}