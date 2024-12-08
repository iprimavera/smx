Write-Host "Dime el nombre de la carpeta: "
$carpeta = Read-Host

if ( Test-Path $carpeta ){

    Write-Host "La carpeta $carpeta existe"

}else{

    Write-Host "La carpeta $carpeta no existe"
    New-Item -ItemType Directory -Name $carpeta -Path 'C:\Users\Usuario\Desktop\SOM\'
}

