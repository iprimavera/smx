#Crea un PowerShell Script que acepte 4 números como argumento
#(únicamente) y que devuelva la multiplicación de todos ellos. En caso de
#que el resultado exceda 10^6 que muestre un mensaje: 


if ($args.Length -ne 4) {
    Write-Host "Por favor, ingrese exactamente 4 números como argumentos." -ForegroundColor red
    exit
}

$num1, $num2, $num3, $num4 = $args

$resultado = $num1 * $num2 * $num3 * $num4

Write-Host "El resultado es $resultado"

if ($resultado -gt 1000000) {

    Write-Host "Numero Extraordinario" -ForegroundColor Green


}