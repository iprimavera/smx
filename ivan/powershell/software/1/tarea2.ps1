# Crea un PowerShellScript que acepte como único argumento una fecha en
#formato YYYYMMDD y que muestre como resultado de la ejecución t-odo el
#Software que hay instalado en el equipo cuya fecha de instalación sea
#anterior.
#En caso de que no haya ningún software anterior, que muestre un mensaje
#indicándolo. Si un software no tiene ninguna fecha de instalación, asumir
#que es del tres de enero de 2021.

if ($args.Count -eq 1)
{
    $numero = 0

    $argumento = $([int]$args[0])

    Get-ItemProperty HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\* | select-object DisplayName, InstallDate | ForEach-Object {
        $hola = $_.InstallDate
        $hola = $([int]$hola)

        if ($hola -eq 0)
        {
            $hola = 20210103
        }
        
        if ($hola -lt $argumento)
        {
            Write-Host $_.DisplayName $hola
            $numero = $numero + 1
        }
    }

    if ($numero -eq 0)
    {
        Write-Host "No hay ningun software instalado antes de la fecha $argumento" -ForegroundColor Red
    }
}
else
{
    Write-Host "Numero incorrecto de argumentos" -ForegroundColor Red
}