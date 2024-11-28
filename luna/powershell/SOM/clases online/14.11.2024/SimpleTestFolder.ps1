#Vamos a crear un script que pregunte por una
#carpeta y que compruebe que existe. Si no existe,
#que la cree.

Write-Host "Dime el nombre de la carpeta:"
$NOMCARPETA = Read-Host

if ( Test-Path $NOMCARPETA ){

    Write-Host "La carpeta $NOMCARPETA si existe"
    Write-Host "No hace falta hacer nada"

}else{
    
    Write-Host "La carpeta $NOMCARPETA no existe"
    New-Item -ItemType Directory -Name $NOMCARPETA -Path 'C:\Users\Usuario\Desktop\SOM\' 
}