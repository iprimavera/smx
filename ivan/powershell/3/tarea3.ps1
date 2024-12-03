#Crea un PowerShell script que cuente todos los PIDS de los procesos, si el
#total excede de 1000, que muestre un mensaje de “Demasiados procesos
#en marcha”.

$aux=0

Get-Process | Select-Object Id | ForEach-Object {
    $aux=$aux+1
}
Write-Host $aux
if ($aux -gt 1000)
{
    Write-Host "Demasiados procesos en marcha" -ForegroundColor Red
}