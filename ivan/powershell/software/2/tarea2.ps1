if ($args.Count -eq 0) {
    Write-Host "Dime el Rol"
    Write-Host "Devops/Oficina/Gerencia"
    $rol = Read-Host
    if ( $rol -eq "Devops" -or $rol -eq "Oficina" -or $rol -eq "Gerencia") {
        Write-Host "Tu rol es: $rol"
        winget export -o "$rol.fichero"
    }
    else
    {
        Write-Host "Rol incorrecto"
        exit
    }
}
if ($args.Count -eq 1 -and (Test-Path $args[0]))
{
    $fichero = $args[0]
    Write-Host "Me han dado un fichero de listado"
    Write-Host "Instalando"
    winget import -i $fichero
}
if ($args.Count -eq 1 -and -not (Test-Path $args[0]))
{
    Write-Host "El fichero administrado no es un fichero"
}