while ($true) {
    Write-Host "dime el nombre de una carpeta"
    $carpeta = Read-Host

    if (Test-Path $HOME/$carpeta) {
        Get-ChildItem $HOME/$carpeta
    } elseif ($carpeta -eq "q") {
        exit
    } else {
        Write-Host "esa carpeta no existe"
    }

}