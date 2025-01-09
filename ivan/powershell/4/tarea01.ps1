# Sabiendo cómo funciona el cmdlet Select-Object, y ForEach-Object,
# elabora un PowerShell Script que liste todos los archivos que hay en tu
# carpeta del Escritorio y de aquellos que tengan una “e” que muestre su Path
# completo.

Get-ChildItem $HOME/Desktop | Select-Object Name, FullName | ForEach-Object {

    if ($_.Name -match "e")
    {
        Write-Host $_.FullName
    }
}