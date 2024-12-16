# Opción “i”: Instala un software sólo si no está ya instalado, en
# caso de que ya esté que muestre un mensaje.
# - Opción “d”: Desinstala un Software del equipo, pero en este caso
# debe mostrar un submenú que permita elegir entre:
# a) OperaGX
# b) Notepad++
# c) VLC
# d) Volver atrás
# - Opción “f”: Pregunta por una fecha en formato YYYYMMDD, y
# genere en la carpeta del Personal del Usuario que está lanzando
# el Script un fichero de exportación del Software instalado en el
# equipo cuyo nombre sea: YYYYMMDD_SoftList.json
# y en caso de que el fichero ya existiera previamente, que
# pregunte si desea borrarlo.
# - Opción “q” o “quit”: Sale del menú

While ($true) {
    Write-Host "Elige una de las siguientes opciones:"
    Write-Host "i) Instala un software"
    Write-Host "d) Desinstala un software del equipo"
    Write-Host "f) Exportar software"
    Write-Host "q) Salir del menu"
    $opcion = Read-Host
    $borrar = "si"
    #En la opción “i”, mediante WinGet el programa debe
    #instalar el software que se le indique de entre los
    #siguientes: (OperaGX, Notepad++ o VLC). En caso de que se seleccione otro,
    #mostrar un mensaje de “elección de programa incorrecta”.

    if ($opcion -eq "i")
    {
        Write-Host "Elige uno de los siguientes softwares:"
        Write-Host "a) OperaGX"
        Write-Host "b) Notepad++"
        Write-Host "c) VLC"
        $instalar = Read-Host

        if ($instalar -eq "a")
        {
            if ($(winget list --name "OperaGX") -match "No installed")
            {
                Write-Host "winget install OperaGX"
            }
            else
            {
                Write-Host "el software ya esta instalado"
            }
        }
        elseif ($instalar -eq "b")
        {
            if ($(winget list --name "OperaGX") -match "No installed")
            {
                Write-Host "winget install Notepad++"
            }
            else
            {
                Write-Host "el software ya esta instalado"
            }
        }
        elseif ($instalar -eq "c")
        {
            if ($(winget list --name "OperaGX") -match "No installed")
            {
                Write-Host "winget install VLC"
            }
            else
            {
                Write-Host "el software ya esta instalado"
            }
        }
        else
        {
            Write-Host "elección de programa incorrecta"
        }
    }
    # - Opción “d”: Desinstala un Software del equipo, pero en este caso
    # debe mostrar un submenú que permita elegir entre:
    # a) OperaGX
    # b) Notepad++
    # c) VLC
    # d) Volver atrás
    elseif ($opcion -eq "d")
    {
        Write-Host "Elige uno de los siguientes softwares:"
        Write-Host "a) OperaGX"
        Write-Host "b) Notepad++"
        Write-Host "c) VLC"
        Write-Host "d) Volver atras"
        $desinstalar = Read-Host

        if ($desinstalar -eq "a")
        {
            Write-Host "winget uninstall OperaGX"
        }
        elseif ($desinstalar -eq "b")
        {
            Write-Host "winget uninstall Notepad++"
        }
        elseif ($desinstalar -eq "c")
        {
            Write-Host "winget uninstall VLC"
        }
        elseif ($desinstalar -eq "d")
        {
            Write-Host "volviendo atras"
        }
        else
        {
            Write-Host "eleccion de programa incorrecta"
        }
    }
    #En la opción “f”, es recomendable usar variables de entorno. Además, la
    #fecha debe estar entre el año 2020 y el 2025 ambos incluidos, los meses y los
    #días no deben ser tenidos en cuenta.
    # - Opción “f”: Pregunta por una fecha en formato YYYYMMDD, y
    # genere en la carpeta del Personal del Usuario que está lanzando
    # el Script un fichero de exportación del Software instalado en el
    # equipo cuyo nombre sea: YYYYMMDD_SoftList.json
    # y en caso de que el fichero ya existiera previamente, que
    # pregunte si desea borrarlo.
    elseif ($opcion -eq "f")
    {
        Write-Host "Escribe una fecha en formato YYYYMMDD entre el año 2020 y 2025"
        $fecha = Read-Host

        if ($fecha -lt 20200101 -or $fecha -gt 20251231)
        {
            Write-Host "fecha fuera del rango" -ForegroundColor Red
            $borrar = "no"
        }
        elseif ( Test-Path $HOME/$fecha_SoftList.json)
        {
            Write-Host "El fichero ya existe, deseas reemplazarlo? (y/n)"
            $elegir = Read-Host
            if ($elegir -eq "y")
            {
                $borrar = "si"
            }
            elseif ($elegir -eq "n")
            {
                $borrar = "no"
            }
        }
        if ($borrar -eq "si")
        {
            winget export -o $HOME/$fecha_SoftList.json
        }
    }
    #En la opción “q” o “quit”, sale del menú y del programa mostrando un
    #pequeño texto de despedida.
    elseif ($opcion -eq "q" -or $opcion -eq "quit")
    {
        Write-Host "Saliendo del programa" -ForegroundColor Red
        exit
    }
}




