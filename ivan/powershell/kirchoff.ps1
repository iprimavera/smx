# la suma de las corrientes que llegan a un nodo tiene que ser uno
# pregunta cuantos cables llegan a un nodo ( >=3 ) y que verifique que la suma total sea 0.

$cables = Read-Host -Prompt "dime cuantos cables llegan al nodo"

if ($cables -lt 3) {
    Write-Host -Foreground red "Necesitamos al menos 3 cables"
    $cables = Read-Host
}

$corriente = 0
for ( $i = 1; $i -le $cables; $i++) {
    $cable = Read-Host -Prompt "dame la corriente del cable [ $i ]:"
    $corriente = $corriente + $cable
}

if ( $corriente -eq 0) {
    Write-Host "Kirchoff se cumple"
}else{
    Write-Host "Kirchoff no se cumple, corriente: $corriente"
}