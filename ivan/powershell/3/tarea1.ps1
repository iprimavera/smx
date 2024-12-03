#Crea un PowerShell script que usando argumentos compruebe que existe
#algún proceso cuyo nombre coincide con el texto indicado como
#argumento (en caso contrario mostrará un mensaje y acabará la ejecución).
#En caso de que el proceso(s) exista, para cada uno de ellos mostrará:
#- Nombre del Proceso.
#- Usuario que lo ha lanzado.
#- Ruta al ejecutable.

try
{
    Get-Process *$($args[0])* | Select-Object Name, Path
    #no se como ver que usuario ha lanzado cada proceso
}
catch
{
    Write-Host "no hay ningun proceso con ese nombre" -ForegroundColor Red
}
