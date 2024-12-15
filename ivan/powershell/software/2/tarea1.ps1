# Crea un PowerShell Script que muestre un menú con tres opciones:
#- Opción “i”: Instala un software.
#- Opción “s”: Busca si un software está instalado en el equipo.
#- Opción “q”: Sale del menú.
#En la opción “i”, mediante WinGet el programa debe instalar el Notepad++.
#En la opción “s”, pregunta al usuario por una palabra y comprueba que en la
#lista de software del equipo está instalado algún software o componente
#que coincida con la palabra suministrada.
#En la opción “q”, sale del menú y del programa mostrando un pequeño
#texto de despedida

while ( $true ) {
    Write-Host "Elige una opcion: "
    Write-Host "- i: Instala notepad++."
    Write-Host "- s: Busca si un software está instalado en el equipo."
    Write-Host "- q: Salir del menú."
    $opcion = Read-Host

    if ($opcion -eq "i")
    {
        winget install notepad++
    }
    elseif ($opcion -eq "s")
    {
        Write-Host "Escribe la palabra que quieras buscar en el equipo"
        $palabra = Read-Host
        winget list --name $palabra
    }
    elseif ($opcion -eq "q")
    {
        Write-Host "Saliendo del script..." -ForegroundColor Blue
        exit
    }
    else
    {
        Write-Host "esa no es una opcion disponible" -ForegroundColor Red
        Write-Host ""
    }
}