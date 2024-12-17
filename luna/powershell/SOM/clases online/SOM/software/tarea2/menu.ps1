
$OPCION = "Defecto"

if ( $OPCION -ne "exit"){

    Write-Host "Menu : "
    Write-Host " * i) : Instala un software."
    Write-Host " * s) : Busca si un software está instalado en el equipo."
    Write-Host " * q) : Sale del menú. "
    Write-Host " * Indica tu opción"
    $OPCION = Read-Host

    switch ($opcion) {
    
    i{ 
       winget Install Notepad++
    }

    s{ 
        $proceso = Read-Host "Ingresa el Nombre del Proceso"
        try {
         Get-Process -Id $proceso -ErrorAction Stop | Select-Object ProcessName,Path | Format-List
        }
        catch {
            Write-Host "No hay ningun proceso activo con ese id" -ForegroundColor Red
        }
    }
    q{
        exit
    }
    "exit" {
        exit
    }
    default {
    Write-Host "Opcion no valido" -Foreground Red
    Write-Host "...Saliendo..."
    }
   }
}