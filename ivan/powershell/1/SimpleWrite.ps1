$contador = 0

while ( $contador -lt 20 ){

    Write-Host "Dime un numero: "
    $num = Read-Host
    $contador = $contador + $num

}
Write-Host "Hemos llegado a $contador que es mayor o igual que 20"