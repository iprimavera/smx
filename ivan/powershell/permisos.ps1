$politica = Get-ExecutionPolicy

if ($politica -eq "Unrestricted") {
    Write-Host "La politica de ejecuccion es correcta"
} else {
    Set-ExecutionPolicy -Scope CurrentUser Unrestricted
    Write-Host "La politica de ejecucion se ha cambiado a 'Unrestricted'."
}

Write-Host "Tus politicas de ejecucion son:"

Get-ExecutionPolicy -List