#Elabora un PowerShell Script que liste todos los archivos que hay en tu
#carpeta del Escritorio y de aquellos que tengan una “e” que muestre su Path
#completo.

$desktopPath = [Environment]::GetFolderPath("Desktop")

Get-ChildItem -Path $desktopPath -File | 
    
    Where-Object { $_.Name -like "*e*" } | 
   
    ForEach-Object {
        Write-Output $_.FullName
    }
