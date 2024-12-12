# Crea un PowerShell Script que acepte 4 números como argumento
# (únicamente) y que devuelva la multiplicación de todos ellos. En caso de
# que el resultado exceda 10^6 que muestre un mensaje:
# Numero Extraordinario

if ($($args.Count) -eq 4)
{
    $total = $args[0] * $args[1] * $args[2] * $args[3]
    Write-Output $total
    if ($total -gt 1000000)
    {
        Write-Output "Numero Extraordinario"
    }
}
else
{
    Write-Output "se necesitan exactamente 4 argumentos"
}