

$UserFolder =  [System.Environment]:: GetFolderPath('UserProfile')

Write-Host "Usted se encuentra en $UserFolder"

while ('true'){
    
    Write-Host "Introduce el nombre de una carpeta o pulse 'q' para salir"
    $respuesta = Read-Host

        if ( $respuesta -eq 'q' ){
        Write-Host -Foregroundcolor Red "...saliendo..."
            break

        }
    
    $Carpeta = Join-Path -Path $UserFolder -ChildPath $respuesta
        
        if (Test-Path $Carpeta){

            Write-Host -Foreground Green "Contenido de la carpeta $respuesta :"
            Get-ChildItem -Path $Carpeta

        }else{

            Write-Host -Foreground Red "La carpeta $respuesta no existe"
        }
    }