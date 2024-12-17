
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



while ( $true ){

    Write-Host "Menu : "
    Write-Host " * i) : Instala un software."
    Write-Host " * s) : Busca si un software está instalado en el equipo."
    Write-Host " * q) : Salir del menú. "
    Write-Host " * Indica tu opción"
    $OPCION = Read-Host

   if ($OPCION -eq "i")
    {
        winget install notepad++
    }
    elseif ($OPCION -eq "s")
    {
        Write-Host "Escribe la palabra que quieras buscar en el equipo"
        $palabra = Read-Host
        winget list --name $palabra
    }
    elseif ($opcion -eq "q")
    {
        Write-Host "...Saliendo..." -ForegroundColor green
        exit
    }
    else
    {
        Write-Host "Opcion no disponible, prueba otra vez" -ForegroundColor Red
        Write-Host ""
    }
}