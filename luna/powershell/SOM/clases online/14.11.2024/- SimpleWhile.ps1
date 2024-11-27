#Script que pregunte al usuario por un número
#mientras que el total acumulado sea menor que 20
#que vuleva a preguntar, cuando lo superemos 
#que muestre un mensaje.

$CONTADOR = 0

while ( $CONTADOR -lt 20 ){

    Write-Host "Dime un número:"
    $NUM = Read-Host
    $CONTADOR = $CONTADOR + $NUM

}

Write-Host "Hemos llegado a $CONTADOR que es mayor o igual que 20"